CollectionView = require 'views/base/collection-view'
View = require 'views/base/view'

module.exports = class CaseView extends View
  autoRender: true
  template: require './templates/case'
  tagName: 'li'
  className: 'customer'
