require 'rails_helper'

describe 'タスク管理機能', type: :system do
  describe '一覧表示機能' do
    before do
      user_a = FactoryBot.create(:user)
      FactroyBot.create(:task, name: '最初のタスク', user: user_a)

      vist login_path
      fill_in 'メールアドレス', with: 'a@example.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログインする'
    end

    context 'ユーザーAがログインしているとき' do
      it 'ユーザーAが作成したタスクが表示される' do 
        expect(page).to have_content '最初のタスク'
      end
    end

    context 'ユーザーBがログインしているとき' do
      before do
        FactoryBot.create(:user, name: 'ユーザーB', email:'b@example.com')
      end

      it 'ユーザーAが作成したタスクが表示されない' do
        expect(page).to have_no_content '最初のタスク'
      end
    end
  end
end
