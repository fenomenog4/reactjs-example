OrderListEntry = require('./order_list_entry.js.coffee')
{DOM} = React

OrderList = React.createClass
  displayName: 'OrderList'

  render: ->
    DOM.ul
      className: 'list-group'
      for order in @props.orders
        OrderListEntry
          ref: "developer_#{order.id}"
          order: order

module.exports = OrderList
