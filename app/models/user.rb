class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :first_name, presence: true, format: {
    with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/,
    message: "は、全角で入力して下さい"
    }
  validates :last_name, presence: true, format: {
    with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/,
    message: "は、全角で入力して下さい"
    }
  validates :first_name_kana, presence: true, format: {
    with: /\A[\p{katakana}\p{blank}ー－]+\z/,
    message: 'は全角カナで入力して下さい。'
   }
  validates :last_name_kana, presence: true, format: {
    with: /\A[\p{katakana}\p{blank}ー－]+\z/,
    message: 'は全角カナで入力して下さい。'
    }
  validates :birth_date, presence: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
end
