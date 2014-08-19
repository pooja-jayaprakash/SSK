SSK.Views.Apps ||= {}

class SSK.Views.Apps.SignupView extends Backbone.View
  template: JST["backbone/templates/apps/signup"]

  events:
    "click #signup_submit_btn"  : "signUp"
  
  constructor: (options) ->
    super(options)
    @user = new SSK.Models.User()
    
  signUp: (e) ->
    name = $("#name").val()
    password =  $("#password").val() 
    @user.save({name: name, password: password, type: "signup"},
      success: (model, resp) =>
        router.navigate("search", {trigger: true})
    )
    
  render: ->
    $(@el).html(@template())
    return this
