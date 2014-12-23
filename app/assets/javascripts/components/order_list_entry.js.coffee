{DOM} = React

OrderListEntry = React.createClass
  displayName: 'OrderListEntry'

  render_order_lines: ->
    DOM.ul
      className: 'list-unstyled'
      for line in @props.order.order_lines
        DOM.li
          className: 'list-group-item'
          DOM.span
            className: 'badge'
            line.quantity
          line.product.name

  render: ->
    DOM.a
      className: 'list-group-item'
      href: '#'
      DOM.div
        className: 'row'
        DOM.div
          className: 'col-md-3'
          @props.order.user.fullname
        DOM.div
          className: 'col-md-3'
          @props.order.user.address
        DOM.div
          className: 'col-md-6'
          @render_order_lines()

module.exports = OrderListEntry
