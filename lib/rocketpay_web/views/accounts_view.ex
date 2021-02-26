defmodule RocketpayWeb.AccountsView do
  use RocketpayWeb, :view
  
  alias Rocketpay.Account
  
  def render("update.json", %{
    account: %Account{id: account_id, balance: balance}}) do
    %{
      message: "Balance changed successfully",
      account: %{
        id: account_id,
        balance: balance
      }
    }
  end
  
  def render("transaction.json", %{
      transaction: %{
        to_account: to_account, 
        from_account: from_account}}) do
    %{
      message: "Transaction done successfully",
      transaction: %{
        from_account: %{
          id: from_account,
          balance: from_account.balance
        },
        to_account: %{
          id: to_account,
          balance: to_account.balance
        }
      }
    }
  end
end
