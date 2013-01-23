# vim: ts=2 sts=2 et sw=2 ft=ruby

module DMM

  OPERATION_ITEM_LIST = "ItemList"

  SITE_DMM_CO_JP = "DMM.co.jp"
  SITE_DMM_COM   = "DMM.com"

  SORT_RANK        = "rank"
  SORT_PRICE_DESC  = "+price"
  SORT_PRICE_ASC   = "-price"
  SORT_DATE_DESC   = "date"
  SORT_REVIEW_DESC = "review"

  # https://affiliate.dmm.com/api/reference/r18/digital/all/
  SERVICE_DIGITAL = "digital"  # DMM.R18 動画
  FLOOR_VIDEOA    = "videoa"   # DMM.R18 動画 / ビデオ
  FLOOR_VIDEOC    = "videoc"   # DMM.R18 動画 / 素人
  FLOOR_NIKKATSU  = "nikkatsu" # DMM.R18 動画 / 成人映画
  FLOOR_ANIME     = "anime"    # DMM.R18 動画 / アニメ 
  FLOOR_PHOTO     = "photo"    # DMM.R18 動画 / 電子写真集

  # https://affiliate.dmm.com/api/reference/r18/monthly/all/
  SERVICE_MONTHLY  = "monthly"    # DMM.R18 月額動画
  FLOOR_SHIROUTO   = "shirouto"   # DMM.R18 月額動画 / 素人ガールズコレクション
  #FLOOR_NIKKATSU  = "nikkatsu"   # DMM.R18 月額動画 / ピンク映画
  FLOOR_PARADISETV = "paradisetv" # DMM.R18 月額動画 / パラダイステレビ
  FLOOR_ANIMECH    = "animech"    # DMM.R18 月額動画 / アダルトアニメ
  FLOOR_DREAM      = "dream"      # DMM.R18 月額動画 / ドリーム
  FLOOR_AVSTATION  = "avstation"  # DMM.R18 月額動画 / AVステーション
  FLOOR_PLAYGIRL   = "playgirl"   # DMM.R18 月額動画 / プレイガール
  FLOOR_ALICE      = "alice"      # DMM.R18 月額動画 / アリス
  FLOOR_CRYSTAL    = "crystal"    # DMM.R18 月額動画 / クリスタル
  FLOOR_HMP        = "hmp"        # DMM.R18 月額動画 / h.m.p
  FLOOR_WAAP       = "waap"       # DMM.R18 月額動画 / Waap
  FLOOR_MOMOTAROBB = "momotarobb" # DMM.R18 月額動画 / 桃太郎BB
  FLOOR_MOODYZ     = "moodyz"     # DMM.R18 月額動画 / MOODYZ
  FLOOR_PRESTIGE   = "prestige"   # DMM.R18 月額動画 / プレステージ
  FLOOR_JUKUJO     = "jukujo"     # DMM.R18 月額動画 / 熟女チャンネル
  FLOOR_SOD        = "sod"        # DMM.R18 月額動画 / ソフト・オン・デマンド
  FLOOR_MANIA      = "mania"      # DMM.R18 月額動画 / マニア
  FLOOR_S1         = "s1"         # DMM.R18 月額動画 / エスワン ナンバーワンスタイル
  FLOOR_KMP        = "kmp"        # DMM.R18 月額動画 / KMP

  # https://affiliate.dmm.com/api/reference/r18/ppm/all/
  SERVICE_PPM    = "ppm"   # DMM.R18 1円動画
  FLOOR_VIDEO    = "video" # DMM.R18 1円動画 / ビデオ
  # FLOOR_VIDEOC           # DMM.R18 1円動画 / 素人

  # https://affiliate.dmm.com/api/reference/r18/pcgame/
  SERVICE_PCGAME = "pcgame" # DMM.R18 美少女ゲーム
  FLOOR_PCGAME   = "pcgame" # DMM.R18 美少女ゲーム / 美少女ゲーム

  # https://affiliate.dmm.com/api/reference/r18/doujin/
  SERVICE_DOUJIN = "doujin" # DMM.R18 同人
  FLOOR_DOUJIN   = "doujin" # DMM.R18 同人 / 同人

  # https://affiliate.dmm.com/api/reference/r18/book/
  SERVICE_BOOK = "book" # DMM.R18 電子ブック
  FLOOR_BOOK   = "book" # DMM.R18 電子ブック

  # https://affiliate.dmm.com/api/reference/r18/mono/all/
  SERVICE_MONO       = "mono"    # DMM.R18 通販
  FLOOR_DVD          = "dvd"     # DMM.R18 通販 / DVD
  FLOOR_GOODS        = "goods"   # DMM.R18 通販 / 大人のおもちゃ
  #FLOOR_ANIME       = "anime"   # DMM.R18 通販 / アニメ
  #FLOOR_PCGAME      = "pcgame"  # DMM.R18 通販 / 美少女ゲーム
  #FLOOR_BOOK        = "book"    # DMM.R18 通販 / ブック
  #FLOOR_DOUJIN      = "doujin"  # DMM.R18 通販 / 同人
  MONO_STOCK_STOCK   = "stock"   # 在庫絞込み / 在庫あり
  MONO_STOCK_RESERVE = "reserve" # 在庫絞込み / 予約受付中
  MONO_STOCK_MONO    = "mono"    # 在庫絞込み / DMM通販のみ
  MONO_STOCK_DMP     = "dmp"     # 在庫絞込み / マーケットプレイスのみ

  # https://affiliate.dmm.com/api/reference/r18/rental/all/
  SERVICE_RENTAL   = "rental"     # DMM.R18 DVDレンタル
  FLOOR_RENTAL_DVD = "rental_dvd" # DMM.R18 DVDレンタル / 月額レンタル
  FLOOR_PPR_DVD    = "ppr_dvd"    # DMM.R18 DVDレンタル / 単品レンタル
  FLOOR_SET_DVD    = "set_dvd"    # DMM.R18 DVDレンタル / セットレンタル
end
