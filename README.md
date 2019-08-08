# Getaways

To start your Phoenix server:

  * Have postgres installed and running. Note that Ecto will attempt to connect via the user `postgres` with the default password of `postgres`.
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000/api/graphiql`](http://localhost:4000/api/graphiql) from your browser.

New to GraphQL? Try the following queries in the GraphiQL interface, or click Docs to navigate available queries:

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
