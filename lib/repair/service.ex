defmodule Repair.Service do
  alias __MODULE__

  defstruct(
    shop_id: nil,
    shop_name: nil,
    location: nil,
    account: [],
    complaint: []
  )

  def new(shop_id, shop_name, location) do
    %Service{
      shop_id: shop_id,
      shop_name: shop_name,
      location: location
    }
  end
end
