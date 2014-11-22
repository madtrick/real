class RecurrentAccountingEntriesController < ApplicationController
  respond_to :json

  def index
    respond_with RecurrentAccountingEntry.all, include: [:tags]
  end

  def create
    @recurrent_accounting_entry = RecurrentAccountingEntry.new(params.permit(:amount, :period, tag_list: []))
    @recurrent_accounting_entry.save!

    respond_with @recurrent_accounting_entry
  end

  def show
  end

end

