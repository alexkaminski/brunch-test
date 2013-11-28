CollectionView = require 'views/base/collection-view'
View = require 'views/base/view'
CaseView = require 'views/home/case-view'

module.exports = class CasesView extends CollectionView
  autoRender: true
  className: 'home-page'
  itemView:  CaseView
  tagName: 'ul'

  initialize: ->
  	super

  render: ->
  	#console.log(@collection)
  	super

  listen:
  	'cases:new mediator': 'push'
  
  push: (caseItem) ->
  	@collection.push caseItem
  	console.log(@collection)
