defmodule Repair.Hardware do
  alias __MODULE__

  defstruct(
    id: nil,
    part: nil,
    description: nil,
    resolved: nil
  )

  def new(id, part, description, resolved) do
    %Hardware{
      id: id,
      part: part,
      description: description,
      resolved: resolved
    }
  end
end
