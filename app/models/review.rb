class Review
  include Mongoid::Document
  include Mongoid::Timestamps
  field :content, type: String

  embedded_in :product
end
