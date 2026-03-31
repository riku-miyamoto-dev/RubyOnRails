class User < ApplicationRecord
  validates :name, presence: true, 
    length:{ maximum: 50 }
    
  validates :furigana,
  presence: true,
    format: {with:/\A[ァ-ヶー－]+\z/}

  validates :gender, presence: true, 
    inclusion: { in: ["男", "女", "その他"]}

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
  # 郵便番号は7桁で間にハイフンが入るため
  format: {with:/\A\d{3}[-]\d{4}\z/}

  validates :address, presence: true

  validates :birthday, presence: true

  validates_each :birthday do |record, attr, value|
    record.errors.add(attr, "では未来の日付を設定できません")if value > Date.today
  end
end
