class AddIndexToUsersEmail < ActiveRecord::Migration[5.0]
  def change
    # Here we're:
    # 1. Adding an index to the email column in the Users table
    # 2. Ensuring that the email is unique
    #
    # #1 is required because with all of our users logging into the website,
    # the e-mail will constantly be looked up in the database. This is the
    # textbook example of when an index is necessary to avoid a high number of
    # full-table scans.
    #
    # #2 Ensures that emails are unique on the database level in case race
    # conditions in the app-layer allow an email to sneak in past the
    # uniqueness validation in the User model.
    add_index :users, :email, unique: true
  end
end
