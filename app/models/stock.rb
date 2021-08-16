class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
      secret_token: "Tsk_2083d2a859004089a2db65bf2f2e3c3e",
      endpoint: "https://sandbox.iexapis.com/v1",
    )
    client.price(ticker_symbol)
  end
end
