class Prefecture < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, { id: 2, name: '北海道', area_name:'北海道' }, { id: 3, name: '青森県', area_name: '東北' },
    { id: 4, name: '岩手県', area_name: '東北' }, { id: 5, name: '宮城県', area_name: '東北' }, { id: 6, name: '秋田県', area_name: '東北' }, 
    { id: 7, name: '山形県', area_name: '東北' }, { id: 8, name: '福島県', area_name: '東北' }, { id: 9, name: '茨城県', area_name: '関東' },
    { id: 10, name: '栃木県', area_name: '関東' }, { id: 11, name: '群馬県', area_name: '関東' }, { id: 12, name: '埼玉県', area_name: '関東' },
    { id: 13, name: '千葉県', area_name: '関東' }, { id: 14, name: '東京都', area_name: '関東' }, { id: 15, name: '神奈川県', area_name: '関東' },
    { id: 16, name: '新潟県', area_name: '甲信越' }, { id: 17, name: '富山県', area_name: '北陸' }, { id: 18, name: '石川県', area_name: '北陸' },
    { id: 19, name: '福井県', area_name: '北陸' }, { id: 20, name: '山梨県', area_name: '甲信越' }, { id: 21, name: '長野県', area_name: '甲信越' },
    { id: 22, name: '岐阜県', area_name: '東海' }, { id: 23, name: '静岡県', area_name: '東海' }, { id: 24, name: '愛知県', area_name: '東海' }, 
    { id: 25, name: '三重県', area_name: '東海' }, { id: 26, name: '滋賀県', area_name: '近畿' }, { id: 27, name: '京都府', area_name: '近畿' }, 
    { id: 28, name: '大阪府', area_name: '近畿' }, { id: 29, name: '兵庫県', area_name: '近畿' }, { id: 30, name: '奈良県', area_name: '近畿' }, 
    { id: 31, name: '和歌山県', area_name: '近畿' }, { id: 32, name: '鳥取県', area_name: '中国' }, { id: 33, name: '島根県', area_name: '中国' }, 
    { id: 34, name: '岡山県', area_name: '中国' }, { id: 35, name: '広島県', area_name: '中国' }, { id: 36, name: '山口県', area_name: '中国' }, 
    { id: 37, name: '徳島県', area_name: '四国' }, { id: 38, name: '香川県', area_name: '四国' }, { id: 39, name: '愛媛県', area_name: '四国' }, 
    { id: 40, name: '高知県', area_name: '四国' }, { id: 41, name: '福岡県', area_name: '九州' }, { id: 42, name: '佐賀県' , area_name: '九州'}, 
    { id: 43, name: '長崎県', area_name: '九州' }, { id: 44, name: '熊本県', area_name: '九州' }, { id: 45, name: '大分県', area_name: '九州' }, 
    { id: 46, name: '宮崎県', area_name: '九州' }, { id: 47, name: '鹿児島県', area_name: '九州' }, { id: 48, name: '沖縄県', area_name: '沖縄' }
]

  include ActiveHash::Associations
  has_many :packages

end