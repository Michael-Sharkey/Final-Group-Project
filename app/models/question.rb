class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  validates :title, :body, presence: true
  belongs_to :user
  scope :by_tag1, -> tag1 { where(:tag1 => tag1) }
  has_many :taggings
  has_many :tags, through: :taggings
  has_attached_file :avatar, styles: { medium: "300x300>", middle: "230x230>", thumb: "100x100>" }, default_url: "/assets/default.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  #### Justin Weiss filtering stuff
  scope :title, -> (title) { where title: title }
  scope :location, -> (location_id) { where location_id: location_id }
  scope :starts_with, -> (name) { where("name like ?", "#{name}%")}

  def tag_list
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end

  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end
end
