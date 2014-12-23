class User
  constructor: (@id, @fullname, @address) ->

class Order
  constructor: (@id, @user, @created_at, @due_date, @takeaway, @order_lines) ->

  delivery: =>
    !!@takeaway

class OrderLine
  constructor: (@id, @product, @quantity) ->

class Product
  constructor: (@id, @name, @price, @currency) ->

module.exports.User      = User
module.exports.Order     = Order
module.exports.OrderLine = OrderLine
module.exports.Product   = Product
