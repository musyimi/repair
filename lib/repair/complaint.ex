defmodule Repair.Complaint do
  alias __MODULE__

  defstruct(
    id: nil,
    gadget: [],
    pick_up_and_delivery: nil,
    problem: [],
    refernce_number: nil,
    turn_around_time: nil
  )

  def new(id, pick_up_and_delivery, reference_number, turn_around_time) do
    %Complaint{
      id: id,
      pick_up_and_delivery: pick_up_and_delivery,
      reference_number: reference_number,
      turn_around_time: turn_around_time
    }
  end
end
