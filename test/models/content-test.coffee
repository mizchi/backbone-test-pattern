Content = require '../../app/models/content.coffee'

describe 'Content', ->
  stubRequest
    url: '/content'

  describe '#fetch', ->
    it 'should request to /content', (done) ->
      content = new Content
      content.fetch().done -> done()

