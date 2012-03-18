App.EditPostView = Ember.View.extend
  tagName: 'form'
  templateName: 'app/templates/posts/edit'

  init: ->
    # create a new post that's a duplicate of the post in the parentView;
    # changes made to the duplicate won't be applied to the original unless
    # everything goes well in submitForm()
    editablePost = App.Post.create this.get('parentView').get('post')
    @set "post", editablePost
    @_super()

  didInsertElement: ->
    @_super()
    @$('input:first').focus()

  cancelForm: ->
    @get("parentView").hideEdit()

  submit: (event) ->
    post = @get "post"

    event.preventDefault()

    post.saveResource()
      .fail (e) ->
        App.displayError(e)
      .done =>
        parentView = @get("parentView")
        parentView.get("post").duplicateProperties(post)
        parentView.hideEdit()
