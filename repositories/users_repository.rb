class UsersRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @users = []
  end

  def all
    @users
  end

  def load
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      @users << User.new(row)
    end
  end

end
