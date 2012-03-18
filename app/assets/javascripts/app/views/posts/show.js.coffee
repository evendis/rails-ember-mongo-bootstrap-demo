App.ShowPostView = Ember.View.extend
  templateName: 'app/templates/posts/show'
  classNames: ['show-post']
  tagName: 'tr'

  doubleClick: ->
    @showEdit()

  showEdit: ->
    @set 'isEditing', true

  hideEdit: ->
    @set 'isEditing', false

  destroyRecord: ->
    post = @get "post"

    post.destroyResource()
      .fail (e) ->
        App.displayError(e)
      .done ->
        App.postsController.removeObject post
