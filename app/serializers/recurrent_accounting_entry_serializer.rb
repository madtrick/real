class RecurrentAccountingEntrySerializer < ActiveModel::Serializer
  attributes :id, :amount, :created_at, :tags, :period, :last_run

  def tags
    object.tags.map {|tag| tag.name}
  end
end

