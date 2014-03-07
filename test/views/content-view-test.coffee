ContentView = require '../../app/views/content-view.coffee'

describe 'ContentView', ->

  it 'should request content foo', ->
    contentView = new ContentView model: {content: 'foo'}
    expect(contentView.$('.content')).to.have.text('foo')

  describe '#showContent', ->
    it 'should show content', ->
      content = new ContentView
      content.$('.js-show-content').click()
      expect(content.$('.content').css('display')).eq 'block'

  describe '#hideContent', ->
    it 'should hide content', ->
      content = new ContentView
      content.$('.js-hide-content').click()
      expect(content.$('.content').css('display')).eq 'none'

  describe '#saveContent', ->
    beforeEach ->
      @setItemSpy = sinon.stub(localStorage,'setItem')

    afterEach ->
      @setItemSpy.restore()

    it 'should save content to localStorage', ->
      content = new ContentView model: {content: 'tosave'}
      content.saveContent()
      expect(@setItemSpy.calledWith(sinon.match.string)).to.be.true
