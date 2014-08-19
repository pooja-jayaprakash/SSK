SSK.Views.Apps ||= {}

class SSK.Views.Apps.SigninView extends Backbone.View
  template: JST["backbone/templates/apps/signin"]
  
  events:
    "click #signin_submit_btn"  : "signIn"
  
  constructor: (options) ->
    super(options)
    @user = new SSK.Models.User()
    
  signIn: (e) ->
    name = $("#name").val()
    password =  $("#password").val() 
    @user.save({name: name, password: password, type: "signin"},
      success: (model, resp) =>
        router.navigate("message", {trigger: true})
    )

  render: ->
    $(@el).html(@template())
    return this
