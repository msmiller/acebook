class ExtendTimelinesAndLores < ActiveRecord::Migration
  def change
    add_column "lores", "approved", :boolean
    add_column "lores", "game", :string, :limit => 16
    add_column "lores", "kind", :string, :limit => 16

    add_column "timelines", "approved", :boolean
    add_column "timelines", "game", :string, :limit => 16
    add_column "timelines", "kind", :string, :limit => 16
  end
end
