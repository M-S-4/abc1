class Episode < ActiveRecord::Base
  before_save :set_slug
  default_scope { order(:position) }
  belongs_to :course

  private
    def set_slug
      self.slug = self.title.parameterize
    end
end
