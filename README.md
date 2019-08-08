# Getaways

To start your Phoenix server:

  * Have postgres installed and running. Note that Ecto will attempt to connect via the user `postgres` with the default password of `postgres`.
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000/graphiql`](http://localhost:4000/api/graphiql) from your browser to use the playground.

New to GraphQL? Try the following queries in the GraphQL playground, or click Schema in the playground to explore

To get all places:
```
query {
  places {
    id
    name
    location
    maxGuests
  }
}
```

To create a place:
```
mutation {
  createPlace(
    location: "New Location"
    name: "New Place"
    maxGuests: 1
  ) {
    id
  }
}
```

To update a place:
```
mutation {
  updatePlace(id: 1, place: { location: "Updated location" }) {
    id
    name
  }
}
```

To delete a place:
```
mutation {
  deletePlace(id: 1) {
    id
  }
}
```

You may receive an unhandled Ecto.NoResultsError if the record you are trying to update or delete could not be found, will be resolved in a future update.