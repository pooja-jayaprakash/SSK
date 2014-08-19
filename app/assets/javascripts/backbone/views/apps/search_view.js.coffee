SSK.Views.Apps ||= {}

class SSK.Views.Apps.SearchView extends Backbone.View
  template: JST["backbone/templates/apps/search"]

  events:
    "click #search_submit_btn"  : "searchMessages"

  constructor: (options) ->
    super(options)
    @message = new SSK.Models.Message()
    @messages = new SSK.Collections.MessagesCollection()
    
  searchMessages: () ->
    query = $("#query").val()
    @$("#search_message_container").html("")
    @messages.fetch(
      url: "message/search/" + query
      success: (model, resp) =>
        @messages.forEach((message) =>
          @$("#search_message_container").append("<div class=\"message_item\"><div class=\"message_sender\">user_id: " + message.attributes.user_id + "</div><div class=\"message_otext\">o_text: " + message.attributes.o_text + "</div><div class=\"message_etext\">e_text: " + message.attributes.e_text + "</div></div>***********")
        )
    )
    
  render: ->
    $(@el).html(@template())
    return this
