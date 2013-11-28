Case = require './case'
Collection = require './base/collection'

module.exports = class CasesCollection extends Collection

  # Use the project base model per default, not Chaplin.Model
  initialize: ->
  	super
  	#@models.push(new Case)