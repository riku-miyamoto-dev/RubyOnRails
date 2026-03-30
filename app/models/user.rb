class User < ApplicationRecord
  validates :name, presence: true, 
    length:{ maximum: 50 }
    
  validates :no, presence: true, 
    uniqueness: true

  validates :rubi, presence: true, 
    format: {with: /\A[ァ-ヶー－]+\z/}

  validates :gender, presence: true, 
    inclusion: { in: %w[男 女 その他]}

  validates :phone,  presence: true,
  # 電話番号の最長が11桁で間にハイフンが入っているため、最長13桁
    length:{ maximum: 13 }

  validates :mobile, presence: true,
  # 上記の内容と同様
    length:{ maximum: 13 }

  validates :email, presence: true,
    format: {with: URI::MailTo::EMAIL_REGEXP}, 
    uniqueness: true

  validates :post_code,
  # 郵便番号は7桁で間にハイフンが入るため8桁
    length:{ maximum: 8 }

  validates :address, presence: true

  validates :birthday, presence: true
end
