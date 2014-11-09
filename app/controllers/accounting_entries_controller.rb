class AccountingEntriesController < ApplicationController
  respond_to :json

  def index
    respond_with AccountingEntry.all.to_json(include: [:user, :tags])
  end

  def create
    @accounting_entry = AccountingEntry.new(params.permit(:amount, tag_list: []))
    @accounting_entry.user = current_user
    @accounting_entry.save!

    respond_with @accounting_entry
  end

  def show
  end

  def update
    @accounting_entry = AccountingEntry.find(params[:id])
    @accounting_entry.update amount: params[:amount], tag_list: params[:tag_list]

    respond_with @accounting_entry
  end
end
