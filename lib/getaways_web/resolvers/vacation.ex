defmodule GetawaysWeb.Resolvers.Vacation do
  alias Getaways.Vacation
  alias Getaways.Repo

  def places(_, _, _) do
    {:ok, Vacation.list_places()}
  end

  def place(_, %{id: id}, _) do
    {:ok, Vacation.get_place!(id)}
  end

  def create_place(_parent, args, _context) do
    Vacation.create_place(args)
  end

  def update_place(_parent, %{id: id, place: place_args}, _context) do
    place = Repo.get!(Vacation.Place, id)
    Vacation.update_place(place, place_args)
  end

  def delete_place(_parent, %{id: id}, _context) do
    place = Repo.get!(Vacation.Place, id)
    Vacation.delete_place(place)
  end
end