require "pg"

class Database
  def initialize
    conn = { host: "192.168.99.100", dbname: "nflix", user: "postgres", password: "qaninja" }
    @connection = PG.connect(conn)
  end

  def delete_users(email)
    @connection.exec("DELETE from users where email = '#{email}';")
  end
end
