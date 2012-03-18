Handlebars.registerHelper 'submitButton', (text) ->
  new Handlebars.SafeString '<button type="submit">' + text + '</button>'
