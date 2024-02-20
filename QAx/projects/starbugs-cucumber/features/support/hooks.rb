
require_relative './pages/home.rb'
require_relative './pages/checkout.rb'
require_relative './pages/order.rb'
require_relative './pages/components.rb'

Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @order = OrderPage.new
    @popup = Popup.new
end

After do |scenario|
    screenshots = page.save_screenshot("logs/screenshots/#scenario__id__.png")
    attach(screenshots, "image/png", "screenshot")

    # if (scenario.failed)
    #     screenshots = page.save_screenshot("logs/screenshots/#scenario__id__.png")
    # attach(screenshots, "image/png", "screenshot")
    # end
    
end