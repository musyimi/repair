defmodule Repair.Gadget do
  alias __MODULE__

  defstruct(id: nil, name: nil, brand: nil,
   model_number: nil, color: nil,
    pick_up_and_delivery: nil, reference_number: nil,
     software_problem: nil, hardware_problem: nil,
      turn_around_time: nil, accounts: [])

  def new(id, name,
  brand,
  model_number,
  color,
  pick_up_and_delivery,
  reference_number,
  software_problem,
  hardware_problem,
  turn_around_time) do
    %Gadget{
      id: id,
      name: name,
      brand: brand,
      model_number: model_number,
      color: color,
      pick_up_and_delivery: pick_up_and_delivery,
      reference_number: reference_number,
      software_problem: software_problem,
      hardware_problem: hardware_problem,
      turn_around_time: turn_around_time
    }
  end

  def add_complaint(gadget, account) do
    accounts = [account | gadget.accounts]

    Map.put(gadget, :accounts, accounts)
  end


end
