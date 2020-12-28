class Project < ApplicationRecord
  #project_managerに属する
  belongs_to :project_manager
  #memberを複数持っている
  has_many :members
end
