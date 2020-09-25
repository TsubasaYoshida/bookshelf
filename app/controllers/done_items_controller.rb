class DoneItemsController < ApplicationController

  def create
    current_user.done_items.create(done_item_params)
    redirect_to books_url
  end

  private

  def done_item_params
    params.require(:done_item).permit(:book_id)
  end
end
