class Report < ApplicationRecord
  belongs_to :user
  validates :report_name, :company, :proposal_amount, :result_amout, :proposal_content, :result_content, presence: true
end
