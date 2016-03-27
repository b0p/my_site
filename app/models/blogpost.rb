class Blogpost < ActiveRecord::Base
  has_attached_file :image, styles: { normal: "600x400" },
                    default_style: :normal

  validates_attachment :image,
  content_type: { content_type: ["image/jpg",
                                "image/jpeg",
                                "image/png",
                                "image/gif"] }
end
