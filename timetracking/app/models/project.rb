class Project < ActiveRecord::Base
  has_many :time_entries

  def self.clean_old
    old_projects = Project.where("created_at < ?", 1.week.ago)

    # Also for a week ago:
    # 7.days.ago
    # Time.now - 60 * 60 * 24 * 7
    # Time.now - 7.days
    # Time.now - 1.week

    old_projects.destroy_all
  end
end
