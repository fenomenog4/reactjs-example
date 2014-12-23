Backend    = require('backend.js.coffee')
OrderList  = require('components/order_list.js.coffee')

class DisplayingOrderListApp
  constructor: (@domNode, @guiComponent, @backend) ->

  start: =>
    $.when(@backend.fetchOrders()).done (orders) =>
      component = @guiComponent(useCase: @, orders: orders)
      React.renderComponent(component, @domNode)

$ ->
  $("[data-app=displaying-order-list]").each ->
    displaying_order_list_app = new DisplayingOrderListApp(@, OrderList, new Backend())
    displaying_order_list_app.start()
