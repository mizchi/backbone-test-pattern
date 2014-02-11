ContentView = require '../../app/views/content-view.coffee'

describe 'foo', ->
  it 'should have content foo', ->
    contentView = new ContentView model:
      content: 'foo'
    expect(contentView.$('.content')).to.have.text('foo')
