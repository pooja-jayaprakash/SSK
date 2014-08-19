class SSK.Models.Message extends Backbone.Model
  paramRoot: 'message'
  urlRoot: '/message'

class SSK.Collections.MessagesCollection extends Backbone.Collection
  model: SSK.Models.Message
  url: '/messages'
