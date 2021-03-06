class DefineExplicitLengthForDiscoveryRuleAttributes < ActiveRecord::Migration
  def change
    change_column :discovery_rules, :name, :string, :limit => 255
    change_column :discovery_rules, :search, :string, :limit => 255
    change_column :discovery_rules, :hostname, :string, :limit => 255
  end
end
