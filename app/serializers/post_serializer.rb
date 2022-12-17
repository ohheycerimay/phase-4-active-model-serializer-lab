class PostSerializer < ActiveModel::Serializer
  attributes :title, :tags, :short_content, :content

  belongs_to :author

  def short_content
    "#{object.content[0..39]}..."
  end


end
