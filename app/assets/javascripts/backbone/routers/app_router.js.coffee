class SSK.Routers.AppsRouter extends Backbone.Router
  initialize: (options) ->

  routes:
    "*.*"     : "signin"
    "signup"  : "signup"
    "message" : "message"
    "list"    : "list"
    "search"  : "search"
  
  signin: ->
    @view = new SSK.Views.Apps.SigninView()
    $("#base").html(@view.render().el)

  signup: ->
    @view = new SSK.Views.Apps.SignupView()
    $("#base").html(@view.render().el)

  message: ->
    @view = new SSK.Views.Apps.MessageView()
    $("#base").html(@view.render().el)

  list: ->
    @view = new SSK.Views.Apps.ListView()
    $("#base").html(@view.render().el)

  search: ->
    @view = new SSK.Views.Apps.SearchView()
    $("#base").html(@view.render().el)

