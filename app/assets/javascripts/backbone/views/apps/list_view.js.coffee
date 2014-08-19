SSK.Views.Apps ||= {}

class SSK.Views.Apps.ListView extends Backbone.View
  template: JST["backbone/templates/apps/list"]

  constructor: (options) ->
    super(options)
    @message = new SSK.Models.Message()
    @messages = new SSK.Collections.MessagesCollection()
    
  listMessages: () ->
    @messages.fetch(
      url: "message/list"
      success: (model, resp) =>
        @messages.forEach((message) =>
          @$("#list_message_container").append("<div class=\"message_item\"><div class=\"message_sender\">user_id: " + message.attributes.user_id + "</div><div class=\"message_otext\">o_text: " + message.attributes.o_text + "</div><div class=\"message_etext\">e_text: " + message.attributes.e_text + "</div></div>***********")
        )
    )
    
    
  render: ->
    $(@el).html(@template())
    @listMessages()
    return this
