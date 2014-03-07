View = require '../../../app/views/base/view.coffee'
template = require './template.hbs'

describe 'View', ->
  describe '#constructor', ->
    class XView extends View
      template: template

    context 'with model property x is foo', ->
      beforeEach ->
        @object = x: 'foo'
      it 'should render by handlebars with model properties', ->
        xview = new XView model: @object
        expect(xview.$el.html()).eq '<div id="x">foo</div>'

  describe '#attach', ->
    it 'should append itself to jQuery element', ->
      $sandbox = $('<div>')
      view = new View
      view.attach($sandbox)
      expect($sandbox).to.not.have.html ''
