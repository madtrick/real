class AccountingEntriesController < ApplicationController
  respond_to :json

  def index
    respond_with AccountingEntry.all, include: [:user, :tags]
  end

  def create

    @accounting_entry = AccountingEntry.new(accounting_entry_params)
    @accounting_entry.user = current_user
    @accounting_entry.save!

    respond_with @accounting_entry
  end

  def show
  end

  def update
    @accounting_entry = AccountingEntry.find(params[:id])
    @accounting_entry.update accounting_entry_params

    respond_with @accounting_entry
  end

  private
  def accounting_entry_params
    {amount: params[:amount], date: params[:date], tag_list: params[:tags]}
  end
end
