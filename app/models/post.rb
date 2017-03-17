class Post < ApplicationRecord
    belongs_to :user
    belongs_to :group
    validates :context, presence: true
    scope :resent, -> { order("created_at DESC")}

end
