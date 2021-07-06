class Dependency < ApplicationRecord
  belongs_to :package_manager
  belongs_to :license
  has_many :dependency_instances
  has_many :projects, through: :dependency_instances

  before_validation :update_with_details, on: :create

  scope :with_projects, -> { includes(:projects) }
  scope :ordered_by_name, -> { order("dependencies.name ASC") }

  def update_with_details
    details = DependencyDetailsFetcher.new(self).fetch
    self.source_repo_url = details[:url]
    license_name = details[:license] || "Unknown"
    self.license = License.find_or_create_by(name: license_name)
    if license_name == "MIT-Hippocratic-1.2"
      HippocraticAlertMailer.alert(name)
    end
  end
end
