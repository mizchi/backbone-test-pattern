ContentView = require './views/content-view.coffee'

$ ->
  view = new ContentView model: {content: 'foo'}
  view.attach('body')
