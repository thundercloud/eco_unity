class NotifyOrderMailer < ApplicationMailer
	default from: "mcn.test.email@gmail.com"

	def sample_email(order)
      @order = order
      mail(to: 'eco-unity@yandex.ru', subject: "Заказ №#{@order.id}")
  end

end
