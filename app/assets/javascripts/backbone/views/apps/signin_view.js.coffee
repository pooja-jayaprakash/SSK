SSK.Views.Apps ||= {}

class SSK.Views.Apps.SigninView extends Backbone.View
  template: JST["backbone/templates/apps/signin"]

  render: ->
    $(@el).html(@template())
    return this
