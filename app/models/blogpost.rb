class Blogpost < ActiveRecord::Base
  has_attached_file :image,
                    styles: { normal: "500x300#" },
                    default_style: :normal

  validates_attachment :image,
                        content_type: { content_type: ["image/jpg",
                                                      "image/jpeg",
                                                      "image/png",
                                                      "image/gif"] }

  validates :image, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :image
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 5.megabytes
end
