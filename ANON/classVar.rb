class Document
  @@yello = :a4
  def self.default_doc_size
    @@yello
  end
  def self.set_default_doc_size=(new_size)
    @@default_doc_size = new_size
  end
end
