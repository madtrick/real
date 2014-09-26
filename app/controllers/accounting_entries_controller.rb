class AccountingEntriesController < ApplicationController
  respond_to :json

  def index
    respond_with AccountingEntry.all.to_json(include: :tags)
  end

  def create
    @accounting_entry = AccountingEntry.create!(params.permit(:amount, tag_list: []))
    respond_with @accounting_entry
  end

  def show
  end
end
