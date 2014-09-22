class AccountingEntriesController < ApplicationController
  respond_to :json

  def index
    respond_with AccountingEntry.all
  end

  def create
    @accounting_entry = AccountingEntry.create!(@params)
    respond_with @accounting_entry
  end

  def show
  end
end
