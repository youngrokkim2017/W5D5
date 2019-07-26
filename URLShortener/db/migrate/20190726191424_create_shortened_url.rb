class CreateShortenedUrl < ActiveRecord::Migration[5.2]
  def change
    validates :short_url, :long_url, null: false, unique: true
    create_table :shortened_urls do |t|
      t.string :short_url,
      t.string :long_url,
      t.integer :user_id
    end
    add_index :shortened_urls, :short_url
    add_index :shortened_urls, :long_url
  end
end
