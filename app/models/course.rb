 class Course < ActiveRecord::Base
   before_save :set_slug

   has_attached_file :image,
   styles: { medium: "300x300#", thumb: "150x150>" },
   default_url: "/assets/missing_:style.png"
   validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

   has_many :episodes

   private
    def set_slug
      self.slug = self.title.parameterize
    end
end
