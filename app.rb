require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  erb(:hello)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square_root/new") do
  erb(:new_square_root)
end

get("/payment/new") do
  erb(:new_payment)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 2
  erb(:square_results)
end

get("/square_root/results") do
  @the_num_r = params.fetch("users_root_number").to_f

  @the_result_r = @the_num_r**0.5
  erb(:square_root_results)
end

get("/payment/results") do
  @apr = params.fetch("users_apr").to_f

  @years = params.fetch("users_years").to_i

  @principal = params.fetch("users_principal").to_f

  monthly_interest_rate = (@apr / 12) / 100
  total_payments = @years * 12

  @payment = (monthly_interest_rate * @principal) / (1 - (1 + monthly_interest_rate)**(-total_payments)).to_s_currency

  erb(:payment_results)
end


get("/") do
  erb(:new_square_calc)
end
