defmodule Repair.Account do
  alias __MODULE__

  defstruct(
    id: nil,
    first_name: nil,
    last_name: nil,
    email: nil,
    phone_number: nil
  )

  def new(id, first_name, last_name, email, phone_number) do
    %Account{
      id: id,
      first_name: first_name,
      last_name: last_name,
      email: email,
      phone_number: phone_number
    }
  end

end
