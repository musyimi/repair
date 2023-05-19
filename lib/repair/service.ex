defmodule Repair.Service do
  alias __MODULE__
  alias Repair.Gadgets

  defstruct(
    shop_id: nil,
    shop_name: nil,
    location: nil,
    gadgets: []
  )

  def new(shop_id, shop_name, location) do
    %Service{
      shop_id: shop_id,
      shop_name: shop_name,
      location: location
    }
  end

  def add_accounts(service, gadget) do
    gadgets = [gadget | service.gadgets]

    Map.put(service, :gadgets, gadgets)
  end
end
