if Rails.env.development? || Rails.env.test?
  require "factory_bot"

  namespace :dev do
    desc "Sample data for local development environment"
    task prime: "db:setup" do
      include FactoryBot::Syntax::Methods

      Product.destroy_all

      tool = create :product, price: 29.95, item_number: "tool-123-ab4",
        description: "A mutli-purpose tool"
      level = create :product, price: 49.50, item_number: "tool-389-b5d",
        description: "Thermonuclear level w/ kick stand"
      tacks = create :product, price: 9.15, item_number: "tool-887-bd4",
        description: "Thumb tacks... really good ones"
      saw = create :product, price: 25.00, item_number: "tool-387-saw",
        description: "A very sharp saw"
      nails = create :product, price: 1.57, item_number: "tool-845-bb2",
        description: "A collection of nails, about the same size"
    end
  end
end
