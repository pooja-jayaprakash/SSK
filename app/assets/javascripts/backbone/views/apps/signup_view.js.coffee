SSK.Views.Apps ||= {}

class SSK.Views.Apps.SignupView extends Backbone.View
  template: JST["backbone/templates/apps/signup"]

  render: ->
    $(@el).html(@template())
    return this
