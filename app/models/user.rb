class User
  attr_accessor :login, :email, :first_name, :last_name
  attr_reader :id, :created_at, :updated_at

  def self.all
    [].tap do |users|
      API.fetch("/users")["users"].each do |user|
        users << self.new(user)
      end
    end
  end

  def initialize(api_user)
    api_user.each do |attr, value|
      self.send(:"#{attr}=", value)
    end
  end

  private

  attr_writer :id, :created_at, :updated_at
end
