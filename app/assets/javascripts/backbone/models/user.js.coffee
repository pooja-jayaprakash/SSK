class SSK.Models.User extends Backbone.Model
  paramRoot: 'user'
  urlRoot: '/user'

class SSK.Collections.UsersCollection extends Backbone.Collection
  model: SSK.Models.User
  url: '/users'
