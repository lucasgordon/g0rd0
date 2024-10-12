class SetDefaultValueForViewsInPosts < ActiveRecord::Migration[7.2]
  def change
    change_column_default :posts, :views, 0
  end
end
