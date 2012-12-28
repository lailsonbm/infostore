class OrderMailer < ActionMailer::Base
  default from: "contact@infostore.com"

  def order_placed_email(order)
    @order = order
    mail to: order.email, subject: "Your order ##{order.id} was placed"
  end
end
