SSK.Views.Apps ||= {}

class SSK.Views.Apps.ListView extends Backbone.View
  template: JST["backbone/templates/apps/list"]

  render: ->
    $(@el).html(@template())
    return this
