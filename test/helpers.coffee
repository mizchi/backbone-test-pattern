window.stubRequest = ({url, method, status, response}) ->
  beforeEach ->
    throw 'url is required' unless url
    method ?= 'GET'
    status ?= 200
    response ?= {}

    unless @_server
      @_server = sinon.fakeServer.create()
      @_server.autoRespond = true

    @_server.respondWith(method, url,
      [
        status
        {"Content-Type": "application/json"}
        JSON.stringify(response)
      ]
    )

  afterEach: ->
    @_server?.restore?()
    delete @_server
