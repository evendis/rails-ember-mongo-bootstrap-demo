App.Post = Ember.Resource.extend
  resourceIdField: '_id'
  resourceUrl: '/posts'
  resourceName: 'post'
  resourceProperties: ['title', 'body']

  validate: ->
    if (@get('title') is undefined) or (@get('title') is '')
      'Posts require a title.'

