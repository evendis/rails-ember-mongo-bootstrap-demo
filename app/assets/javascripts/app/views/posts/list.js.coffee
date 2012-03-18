App.ListPostsView = Ember.View.extend
  templateName: 'app/templates/posts/list'
  postsBinding: 'App.postsController'

  refreshListing: ->
    App.postsController.findAll()

  showNew: ->
    @set 'isNewVisible', true

  hideNew : ->
    @set 'isNewVisible', false
