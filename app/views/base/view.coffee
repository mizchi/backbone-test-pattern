module.exports = class View extends Backbone.View
  template: ->
  initialize: (options) ->
    if options?.model instanceof Backbone.Model
      @model = options.model
    else
      @model = new Backbone.Model
      if options?.model?
        @model.set(options.model)
    @render()

  render: ->
    @$el.html @template(@model.toJSON())

  attach: (selector) ->
    $(selector).append @$el
