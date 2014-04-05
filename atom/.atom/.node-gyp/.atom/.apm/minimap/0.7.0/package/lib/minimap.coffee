{Emitter} = require 'emissary'
MinimapView = require './minimap-view'
Debug = require 'prolix'

require '../vendor/resizeend'

class Minimap
  Emitter.includeInto(this)
  Debug('minimap').includeInto(this)

  # We'll be storing each MinimapView using the id of their PaneView
  minimapViews: {}

  # We'll be using this property to store the toggle state as the
  # minimapViews object will never be set to null.
  active: false

  activate: ->
    atom.workspaceView.command 'minimap:toggle', => @toggleNoDebug()
    atom.workspaceView.command 'minimap:toggle-debug', => @toggleDebug()

  deactivate: ->
    view.destroy() for id, view of @minimapViews
    @eachPaneViewSubscription.off()
    @minimapViews = {}
    @emit('deactivated')

  toggle: () ->
    if @active
      @active = false
      @deactivate()
    else
      @open()
      @active = true
      @emit('activated')

  toggleDebug: ->
    @getChannel().activate()
    @toggle()

  toggleNoDebug: ->
    @getChannel().deactivate()
    @toggle()

  updateAllViews: ->
    view.onScrollViewResized() for id,view of @minimapViews

  minimapForEditorView: (editorView) ->
    @minimapForPaneView(editorView.getPane())

  minimapForPaneView: (paneView) -> @minimapForPane(paneView.model)
  minimapForPane: (pane) -> @minimapViews[pane.id]

  open: ->
    # When toggled we'll look for each existing and future pane thanks to
    # the `eachPaneView` method. It returns a subscription object so we'll
    # store it and it will be used in the `deactivate` method to removes
    # the callback.
    @eachPaneViewSubscription = atom.workspaceView.eachPaneView (paneView) =>
      paneId = paneView.model.id
      view = new MinimapView(paneView)
      view.onActiveItemChanged(paneView.getActiveItem())
      @updateAllViews()

      @minimapViews[paneId] = view
      @emit('minimap-view:created', view)

      paneView.model.on 'destroyed', =>
        view = @minimapViews[paneId]

        if view?
          @emit('minimap-view:before-destruction', view)

          view.destroy()
          delete @minimapViews[paneId]
          @updateAllViews()



module.exports = new Minimap()
