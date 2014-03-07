View = require './base/view.coffee'
template = require '../templates/content.hbs'

module.exports = class ContentView extends View
  template: template
  events:
    '.js-show-content': 'showContent'
    '.js-hide-content': 'hideContent'

  showContent: ->
    @$('.content').show()

  hideContent: ->
    @$('.content').hide()

  saveContent: ->
    localStorage.setItem 'content', @model.get 'content'
