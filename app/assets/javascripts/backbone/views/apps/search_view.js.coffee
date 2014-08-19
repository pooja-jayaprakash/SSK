SSK.Views.Apps ||= {}

class SSK.Views.Apps.SearchView extends Backbone.View
  template: JST["backbone/templates/apps/search"]

  constructor: (options) ->
    super(options)
    @message = new SSK.Models.Message()
    
  sendMessage: (e) ->
    message = $("#message").val()
    @message.get(
      url: "message/list"
      success: (model, resp) =>
        @message.forEach((message) =>
          @$(".message_container").append("<div class=\"message_item\"><div class=\"message_sender\">" + message.user_id + "</div><div class=\"message_otext\">" + message.o_text + "</div><div class=\"message_etext\">" + message.e_text + "</div></div>")
        )
    )
    
  render: ->
    $(@el).html(@template())
    return this
