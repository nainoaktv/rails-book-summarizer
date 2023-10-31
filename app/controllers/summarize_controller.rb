class SummarizeController < ApplicationController
  def index
  end

  def summarize
    @book = Book.find_or_initialize_by(
      title: params[:title],
      author_first_name: params[:author_first_name],
      author_last_name: params[:author_last_name]
    )

    if @book.new_record?
      book_description = fetch_book_description(params[:title], params[:author_first_name], params[:author_last_name])
      @book.description = book_description
      @book.save
    end

    render :results
  end

  private

  def fetch_book_description(title, author_first_name, author_last_name)

  end
end
