TerminalView = require '../lib/terminal-view'
TerminalBuffer = require '../lib/terminal-buffer'
{_, WorkspaceView} = require 'atom'
{Emitter} = require 'emissary'

describe "Terminal view", ->
  [view, session] = []

  makeChars = (chars...) ->
    c = []
    for char in chars
      c.push({char: char})
    c

  afterUpdate = (cb) ->
    updated = false
    view.one 'view-updated', -> updated = true
    waitsFor "view update", 30000, ->
      cb?() if updated
      updated

  beforeEach ->
    atom.workspaceView = new WorkspaceView
    atom.packages.activatePackage 'terminal'
    session = {}
    Emitter.extend(session)
    view = new TerminalView(session)

  describe "update event", ->
    it "adds a new line", ->
      session.emit 'update', {lineNumber:1, chars:makeChars("a")}
      afterUpdate ->
        expect(view.find(".line").size()).toBe(1)
        expect(view.find(".line span").text()).toBe("a")

    it "updates the content of an existing line", ->
      session.emit 'update', {lineNumber:1, chars:makeChars("a")}
      session.emit 'update', {lineNumber:1, chars:makeChars("b")}
      afterUpdate ->
        expect(view.find(".line").size()).toBe(1)
        expect(view.find(".line span").text()).toBe("b")

  describe "color", ->
    it "sets the text color", ->
      chars = makeChars("a")
      chars[0].color = 1
      session.emit 'update', {lineNumber:1, chars:chars}
      afterUpdate ->
        expect(view.renderedLines.find("pre span").hasClass("color-1")).toBe(true)

    it "sets a higher color", ->
      chars = makeChars("a")
      chars[0].color = 21
      session.emit 'update', {lineNumber:1, chars:chars}
      afterUpdate ->
        expect(view.renderedLines.find("pre span").css("color")).toBe('rgb(0, 0, 255)')

  describe "background-color", ->
    it "has no background color by default", ->
      session.emit 'update', {lineNumber:1, chars:makeChars("a")}
      afterUpdate ->
        expect(view.renderedLines.find("pre span").hasClass("background-0")).toBe(false)

    it "sets the background color", ->
      chars = makeChars("a")
      chars[0].backgroundColor = 1
      session.emit 'update', {lineNumber:1, chars:chars}
      afterUpdate ->
        expect(view.renderedLines.find("pre span").hasClass("background-1")).toBe(true)

    it "sets a higher color", ->
      chars = makeChars("a")
      chars[0].backgroundColor = 21
      session.emit 'update', {lineNumber:1, chars:chars}
      afterUpdate ->
        expect(view.renderedLines.find("pre span").css("background-color")).toBe('rgb(0, 0, 255)')

  describe "reversed colors", ->
    it "swaps the foreground and background colors", ->
      chars = makeChars("a")
      chars[0].color = 4
      chars[0].backgroundColor = 1
      chars[0].reversed = true
      session.emit 'update', {lineNumber:1, chars:chars}
      afterUpdate ->
        expect(view.renderedLines.find("pre span").hasClass("color-1")).toBe(true)
        expect(view.renderedLines.find("pre span").hasClass("background-4")).toBe(true)

  describe "text style", ->
    it "sets the style to bold", ->
      chars = makeChars("a")
      chars[0].bold = true
      session.emit 'update', {lineNumber:1, chars:chars}
      afterUpdate ->
        expect(view.renderedLines.find("pre span").hasClass("bold")).toBe(true)

    it "sets the style to italic", ->
      chars = makeChars("a")
      chars[0].italic = true
      session.emit 'update', {lineNumber:1, chars:chars}
      afterUpdate ->
        expect(view.renderedLines.find("pre span").hasClass("italic")).toBe(true)

    it "sets the style to underlined", ->
      chars = makeChars("a")
      chars[0].underlined = true
      session.emit 'update', {lineNumber:1, chars:chars}
      afterUpdate ->
        expect(view.renderedLines.find("pre span").hasClass("underlined")).toBe(true)
