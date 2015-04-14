class RecurrentAccountingEntriesController < ApplicationController
  respond_to :json

  def index
    respond_with RecurrentAccountingEntry.all, include: [:tags]
  end

  def create
    @recurrent_accounting_entry = RecurrentAccountingEntry.new(recurrent_accounting_entry_params)
    @recurrent_accounting_entry.save!

    respond_with @recurrent_accounting_entry
  end

  def show
  end

  def update
    @recurrent_accounting_entry = RecurrentAccountingEntry.find(params[:id])
    @recurrent_accounting_entry.update update_recurrent_accounting_entry_params

    respond_with @recurrent_accounting_entry
  end

  private
  def recurrent_accounting_entry_params
    {amount: params[:amount], period: params[:period], tag_list: params[:tags]}
  end

  def update_recurrent_accounting_entry_params
    recurrent_accounting_entry_params.merge({last_run: params[:last_run]})
  end

end

