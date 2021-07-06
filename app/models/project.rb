class Project < ApplicationRecord
  belongs_to :organization
  has_many :dependency_instances
  has_many :dependencies, through: :dependency_instances

  validates :name, uniqueness: true, presence: true

  def github_identifier
    "#{org_name}/#{name}"
  end

end
