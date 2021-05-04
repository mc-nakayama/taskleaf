FactoryBot.define do
   factory :task do
     name{'テストを書く'}
     description{'RSpec&Capybara&FactoryBotを準備する'}
     user
    #  ↑先ほど定義した:userという名前のFactoryをTaskモデルに定義されたuserという名前の関連を生成するのに利用する＝association
   end
end