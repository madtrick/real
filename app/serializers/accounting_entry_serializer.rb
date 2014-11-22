class AccountingEntrySerializer < ActiveModel::Serializer
  attributes :id, :amount, :date, :tags
  has_one :user

  def tags
    object.tags.map {|tag| tag.name}
  end
end
