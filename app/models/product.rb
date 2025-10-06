class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :price, type: BigDecimal
  field :released_on, type: Date
  field :_id, type: String

  before_create :set_custom_id

  validates :name, presence: true

  embeds_many :reviews

  private

  def set_custom_id
    self._id ||= name.to_s.parameterize
  end
end
