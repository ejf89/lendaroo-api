class Api::V1::LoansController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    loans = Loan.all
    render json: loans
  end

  def create
    loan = Loan.create(loan_params)
    render json: loan
  end

  private

  def loan_params
    params.require(:loan).permit(:giver_id, :taker_id, :book_id, :status)
  end

end
