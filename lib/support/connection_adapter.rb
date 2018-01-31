class ConnectionAdapter
  attr_reader :adapter, :database

  def initialize(database, adapter="sqlite3")
    binding.pry
    @adapter = adapter
    @database = database
  end

  def connect!
    ActiveRecord::Base.establish_connection(
      :adapter => self.adapter,
      :database => self.database
    )
  end
end