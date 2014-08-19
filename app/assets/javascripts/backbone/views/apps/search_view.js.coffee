SSK.Views.Apps ||= {}

class SSK.Views.Apps.SearchView extends Backbone.View
  template: JST["backbone/templates/apps/search"]

  render: ->
    $(@el).html(@template())
    return this
