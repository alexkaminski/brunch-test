Controller = require 'controllers/base/controller'
HeaderView = require 'views/home/header-view'
CasesView = require 'views/home/cases-view'
CasesCollection = require 'models/cases-collection'
Case = require 'models/case'

module.exports = class HomeController extends Controller
  beforeAction: ->
    super
    @compose 'header', HeaderView, region: 'header'

  index: ->
    
    @view = new CasesView region: 'main', collection: new CasesCollection
    @temp1 = new Case
    @temp2 = new Case
    @temp2.set('id', 1)
    @temp2.set('name', 'josh')
    Chaplin.mediator.publish('cases:new', @temp1);
    Chaplin.mediator.publish('cases:new', @temp2);