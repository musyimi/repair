defmodule Repair.RepairServer do

  use GenServer
  alias Repair.Service

  def start_link(shop_id) do
    name = duka_name(shop_id)
    GenServer.start_link(__MODULE__, shop_id, name: name)

  end

  def duka_name(shop_id), do: :"shop:#{shop_id}"

  def add_service(shop_id, service) do
    name = duka_name(shop_id)
    GenServer.call(name, {:add_service, service})
  end

  def init(shop_id) do
    repair = Service.new(shop_id)
    {:ok, repair}
  end

  def handle_call({:add_service, service}, _from, repair) do
    repair = Repair.add_service(repair, service)
    {:reply, repair, repair}
  end

end
