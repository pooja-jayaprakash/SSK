SSK.Views.Apps ||= {}

class SSK.Views.Apps.MessageView extends Backbone.View
  template: JST["backbone/templates/apps/message"]

  render: ->
    $(@el).html(@template())
    return this
