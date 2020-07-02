FactoryBot.define do
  factory :article do
    title {"Article title"}
    text {"Article text"}

    #создаем фабрику с названием article_with_comments
    #для создания статьи с несколькими коментов
    factory :article_with_comments do
      #после создания article
      after :create do |article, evaluator|
        #создаем список из 3-x комментариев 
        #article: идет из 'models/comment.rb -> belongs_to :article'
        create_list :comment, 3, article:article
      end
    end
  end
end