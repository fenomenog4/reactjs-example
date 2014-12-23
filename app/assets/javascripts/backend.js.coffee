{User}      = require('domain.js.coffee')
{Order}     = require('domain.js.coffee')
{OrderLine} = require('domain.js.coffee')
{Product}   = require('domain.js.coffee')

class InMemoryBackend
  fetchOrders: =>
    $.when(orders: @_orderList()).then (response) =>
      response.orders

  _orderList: =>
    [
      new Order(1, @_userList()[0],
                Date.create().addMinutes(-15), Date.create().addMinutes(25),
                true, [
                  new OrderLine(1, @_productList()[0], 1)
                  new OrderLine(2, @_productList()[1], 1)
                  new OrderLine(3, @_productList()[2], 1)
                ]),

      new Order(2, @_userList()[1],
                Date.create().addMinutes(-14), Date.create().addMinutes(24),
                true, [
                  new OrderLine(4, @_productList()[3], 1)
                  new OrderLine(5, @_productList()[4], 1)
                  new OrderLine(6, @_productList()[5], 1)
                ]),

      new Order(3 ,@_userList()[2],
                Date.create().addMinutes(-13), Date.create().addMinutes(23),
                true, [
                  new OrderLine(7, @_productList()[6], 1)
                  new OrderLine(8, @_productList()[7], 1)
                  new OrderLine(9, @_productList()[8], 1)
                ]),

      new Order(4, @_userList()[3],
                Date.create().addMinutes(-12), Date.create().addMinutes(22),
                false, [
                  new OrderLine(10, @_productList()[10], 1)
                  new OrderLine(11, @_productList()[11], 1)
                  new OrderLine(12, @_productList()[12], 1)
                ]),

      new Order(5, @_userList()[4],
                Date.create().addMinutes(-11), Date.create().addMinutes(21),
                false, [
                  new OrderLine(13, @_productList()[13], 1)
                  new OrderLine(14, @_productList()[14], 1)
                  new OrderLine(15, @_productList()[15], 1)
                ]),

      new Order(6, @_userList()[5],
                Date.create().addMinutes(-10), Date.create().addMinutes(20),
                false, [
                  new OrderLine(16, @_productList()[16], 1)
                  new OrderLine(17, @_productList()[17], 1)
                  new OrderLine(18, @_productList()[18], 1)
                ])
    ]

  _productList: ->
    [
      new Product(1, 'Whopper', 3.99, '€')
      new Product(2, 'Doble Whopper', 5,85, '€')
      new Product(3, 'Whopper Jr', 3.30, '€')
      new Product(4, 'Triple Whopper', 5.99, '€')
      new Product(5, 'Big King', 3.95, '€')
      new Product(6, 'Big King XXL', 5.90, '€')
      new Product(7, 'Steak House', 4.99, '€')
      new Product(8, 'Steak House César', 4.99, '€')
      new Product(9, 'Doble Cheese Bacon', 3.99, '€')
      new Product(10, 'Doble Cheese Baco XXL', 5.85, '€')
      new Product(11, 'Burger', 2.10, '€')
      new Product(12, 'Cheese Burger', 2.45, '€')
      new Product(13, 'Doble Cheese Burger', 3.35, '€')
      new Product(14, 'Rib Burger', 3.20, '€')
      new Product(15, 'Chicken Tendercrisp', 4.95, '€')
      new Product(16, 'Grilled Chicken', 2.99, '€')
      new Product(17, 'Long Chicken', 3.99, '€')
      new Product(18, 'Crispy Chicken', 3.40, '€')
      new Product(19, 'Claus', 3.90, '€')
    ]

  _userList: =>
    [
      new User(1, 'Pedro Jiménez Díaz', 'Camino de Ronda 148 4ºC derecha')
      new User(2, 'Inmaculada Jiménez Díaz', 'Santa Clotilde 2ºD')
      new User(3, 'Macarena Benavente Pérez', 'Camino de Ronda 184 7ºA')
      new User(4, 'Miguel Arroyo', 'XXX')
      new User(5, 'Victor', 'XXX')
      new User(6, 'Jesús', 'XXX')
    ]

module.exports = InMemoryBackend
