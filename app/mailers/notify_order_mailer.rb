class NotifyOrderMailer < ApplicationMailer
	default from: "chaiko_an@tut.by"

	def sample_email(order)
      @order = order
      mail(to: 'eco-unity@yandex.ru', subject: "Заказ №#{@order.id}")
  end

end
