class AddPhotoUrlToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :photo_url, :string
  end
end
