require_relative 'models/service'
require_relative 'models/agedcare'

post '/' do
  ledger = Ledger.new
  ledger.date = params[:date]
  ledger.description = params[:description]
  ledger.amount = params[:amount]
  ledger.user_id = session[:user_id]
  ledger.chart_of_account_id = params[:chart_of_account_id]
  ledger.save
end