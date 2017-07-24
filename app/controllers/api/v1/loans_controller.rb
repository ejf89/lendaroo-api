class Api::V1::LoansController < ApplicationController

  def index
    loans = Loan.all
    render json: loans
  end

  def create
    loan = Loan.create(loan_params)
    render json: loan
  end

  def update
    loan = Loan.find(params[:id])
    loan.update(status: params[:status])
    render json: loan
  end

  def destroy
    loan = Loan.find(params[:loan_id])
    loan.delete
    render json: loan
  end

  private

  def loan_params
    params.require(:loan).permit(:giver_id, :taker_id, :book_id, :title, :status)
  end

end
