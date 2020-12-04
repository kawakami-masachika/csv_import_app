class ImportCsv
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << row.to_h
    end
    User.create(list)
  end
end