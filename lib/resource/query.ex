defmodule AshGraphql.Resource.Query do
  @moduledoc "Represents a configured query on a resource"
  defstruct [:name, :action, :type]

  @get_schema [
    name: [
      type: :atom,
      doc: "The name to use for the query.",
      default: :get
    ],
    action: [
      type: :atom,
      doc: "The action to use for the query.",
      required: true
    ]
  ]

  @list_schema [
    name: [
      type: :atom,
      doc: "The name to use for the query.",
      default: :list
    ],
    action: [
      type: :atom,
      doc: "The action to use for the query.",
      required: true
    ]
  ]

  def get_schema, do: @get_schema
  def list_schema, do: @list_schema
end
