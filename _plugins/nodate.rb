class Jekyll::PostReader
  def read_posts(dir)
    read_publishable(dir, "_posts", /.*\.md$/)
  end

  def read_drafts(dir)
    read_publishable(dir, "_drafts", /.*\.md$/)
  end
end
