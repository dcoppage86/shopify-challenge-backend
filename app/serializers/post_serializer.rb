class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :tags
end
