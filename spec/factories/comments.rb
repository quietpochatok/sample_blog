FactoryBot.define do
  factory :comment do
    author {"Mike"}
    #body {"something lala"}
    #вкладывает в св-во :body текст comment body(число)
    #выражение создано для множественного создание сущности
    #создание идут по шаблону article_spec #last_comment
    sequence(:body) {|n| "comment body #{n}"}
  end
end