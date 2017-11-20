class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order(:id => :desc).page(params[:page])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def show
    # 1개의 트윗만 보여줌
    @tweet = Tweet.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])
    # 수정할 트윗 수정하는 form
  end

  def update
    # 실제로 수정
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params())
    redirect_to tweet_path(@tweet)
  end

  def destroy
    # 지우는 것
    @tweet = Tweet.find(params[:id])
    @tweet.destroy

    redirect_to tweets_path
  end

  private
  def tweet_params()
    params.require(:tweet).permit(:title, :content)
  end
end
