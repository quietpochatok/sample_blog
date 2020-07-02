require 'rails_helper'

  describe Article do
    describe "validations" do
      it {should validate_presence_of :title}
      it {should validate_presence_of :text}
    end

    describe "associations" do
      it {should have_many :comments}
    end

    describe "#subject" do
      it  "returns the article title" do
        #arrange&act
        article = create(:article, title:'Lorem')
        #asssert
        expect(article.subject).to eq 'Lorem'
      end
    end

    describe "#last_comment" do
      it "returns the last comment" do
        # создаем статью с комментариями, название метода в (:article_with_comments)
        #идет из spec/factories/article.rb
        article_with_comment = create(:article_with_comments)
        #accept
        expect(article_with_comment.last_comment.body).to eq 'comment body 3'
      end
    end
end