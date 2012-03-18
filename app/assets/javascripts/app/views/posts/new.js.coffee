App.NewPostView = Ember.View.extend
  tagName: 'form'
  templateName: 'app/templates/posts/edit'

  init: ->
    @set "post", App.Post.create()
    @_super()

  didInsertElement: ->
    @_super()
    @$('input:first').focus()

  cancelForm: ->
    @get("parentView").hideNew()

  submit: (event) ->
    post = @get "post"

    event.preventDefault()

    post.saveResource()
      .fail (e) ->
        App.displayError(e)
      .done =>
        App.postsController.pushObject(post)
        @get("parentView").hideNew()
