defmodule TeacherWeb.Api.V1.PostController do
  use TeacherWeb, :controller

  alias Teacher.Blogs
  alias Teacher.Blogs.{Comment, Post}

  def index(conn, params) do
    page = Blogs.list_posts(params)
    render(conn, "index.html", posts: page.entries, page: page)
  end
end
