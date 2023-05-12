defmodule Repair.Gadget do
  alias __MODULE__

  defstruct(
    id: nil,
    name: nil,
    brand: nil,
    model_number: nil,
    color: nil
  )

  def new(id, name, brand, model_number, color) do
    %Gadget{
      id: id,
      name: name,
      brand: brand,
      model_number: model_number,
      color: color
    }
  end
end
