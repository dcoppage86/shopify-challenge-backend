class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :tag, :tag_id
end
