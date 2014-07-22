class AddReportIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :report_key, :integer, references: :reports
  end
end
