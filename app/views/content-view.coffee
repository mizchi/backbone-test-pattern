View = require './base/view.coffee'
template = require '../templates/content.hbs'

module.exports = class ContentView extends View
  template: template
  events:
    'click .js-show-content': 'showContent'
    'click .js-hide-content': 'hideContent'

  showContent: ->
    @$('.content').show()

  hideContent: ->
    @$('.content').hide()

  saveContent: ->
    localStorage.setItem 'content', @model.get 'content'
