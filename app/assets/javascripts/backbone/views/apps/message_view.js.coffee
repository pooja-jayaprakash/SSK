SSK.Views.Apps ||= {}

class SSK.Views.Apps.MessageView extends Backbone.View
  template: JST["backbone/templates/apps/message"]

  events:
    "click #message_submit_btn"  : "sendMessage"
  
  constructor: (options) ->
    super(options)
    @message = new SSK.Models.Message()
    
  sendMessage: (e) ->
    message = $("#message").val()
    @message.save({message: message},
      success: (model, resp) =>
        alert("Message submitted!")
    )
    
  render: ->
    $(@el).html(@template())
    return this
