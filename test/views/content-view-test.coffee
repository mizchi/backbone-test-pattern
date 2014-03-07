ContentView = require '../../app/views/content-view.coffee'

describe 'ContentView', ->
  it 'should request content foo', ->
    contentView = new ContentView model:
      content: 'foo'
    expect(contentView.$('.content')).to.have.text('foo')
