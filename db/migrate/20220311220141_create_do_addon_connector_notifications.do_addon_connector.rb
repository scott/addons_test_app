# This migration comes from do_addon_connector (originally 4)
class CreateDoAddonConnectorNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :do_addon_connector_notifications do |t|
      t.integer :owner_id, index: true
      t.string :kind, index: true
      t.text :payload
      t.text :resource_uuids, array: true
      t.datetime :completed_at

      t.timestamps
    end
  end
end
