gem 'activerecord', '=4.2.9'

require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'contact.sqlite3')

class Crm < ActiveRecord::Base
  field :first_name,       as: :string
  field :last_name,        as: :string
  field :email,            as: :string
end

Crm.auto_upgrade!

at_exit do
  ActiveRecord::Base.connection.close
end
