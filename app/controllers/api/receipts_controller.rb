class Api::ReceiptsController < ApplicationController
  def create
    @receipt = Receipt.new(receipt_params)

    if @receipt.save
      render json: @receipt
    else
      render json: @receipt.errors.messages
    end
  end
  
  private
  
  def receipt_params
    params.require(:receipt).permit(
      :title, :description, :amount,
      images: [] # this is where the signed_ids will end up
    )
  end
end
