defmodule Repair.Problem do
  alias __MODULE__

  defstruct(
    id: nil,
    hardware: [],
    software: []
  )

  def new(id) do
     %Problem{
      id: id
     }
  end
end
