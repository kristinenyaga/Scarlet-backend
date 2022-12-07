class ArticleSerializer < ActiveModel::Serializer
  attributes :id,:title,:content,:image_url,:category,:rating,:user
end
