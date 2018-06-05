Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :post do
    type Types::PostType
    argument :id, !types.ID
    description "Find a Post by ID"
    resolve ->(obj, args, ctx) { Post.find(args["id"]) }
  end

  field :posts, types[Types::PostType] do
    resolve ->(obj, args, ctx) { Post.all }
  end

  field :comment do
    type Types::PostType
    description "Find a Post by ID"
    resolve ->(obj, args, ctx) { Post.all }
  end
end
