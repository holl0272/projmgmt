# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  job_num     :string(255)
#  deadline    :date
#  description :text
#  is_complete :boolean          default(FALSE)
#  client_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Project < ActiveRecord::Base
    attr_accessible :title, :job_num, :deadline, :description, :is_complete, :client_id

    belongs_to :client, :inverse_of => :projects

    validates :job_num, :presence => true, :uniqueness => true
end
