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
  SERVICE_PPM    = "ppm"    # DMM.R18 1円動画
  FLOOR_VIDEO    = "video"  # DMM.R18 1円動画 / ビデオ
  #FLOOR_VIDEOC  = "videoc" # DMM.R18 1円動画 / 素人

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

  # https://affiliate.dmm.com/api/reference/com/lod/
  SERVICE_LOD = "lod"   # DMM.com AKB48/SKE48
  FLOOR_AKB48 = "akb48" # DMM.com AKB48/SKE48 / AKB48
  FLOOR_SKE48 = "ske48" # DMM.com AKB48/SKE48 / SKE48

  # https://affiliate.dmm.com/api/reference/com/digital/all/
  #SERVICE_DIGITAL = "digital" # DMM.com 動画
  FLOOR_BANDAI     = "bandai"  # DMM.com 動画 / バンダイch
  #FLOOR_ANIME     = "anime"   # DMM.com 動画 / アニメ
  #FLOOR_VIDEO     = "video"   # DMM.com 動画 / バラエティ
  FLOOR_IDOL       = "idol"    # DMM.com 動画 / アイドル
  FLOOR_CINEMA     = "cinema"  # DMM.com 動画 / 映画・ドラマ
  FLOOR_FIGHT      = "fight"   # DMM.com 動画 / 格闘技

  # https://affiliate.dmm.com/api/reference/com/monthly/all/
  #SERVICE_MONTHLY    = "monthly"       # DMM.com 月額動画
  FLOOR_TOEI          = "toei"          # DMM.com 月額動画 / 東映
  FLOOR_ANIMATE       = "animate"       # DMM.com 月額動画 / アニメ
  FLOOR_SHOCHIKUGEINO = "shochikugeino" # DMM.com 月額動画 / 松竹芸能
  #FLOOR_IDOL         = "idol"          # DMM.com 月額動画 / アイドル
  FLOOR_CINEPARA      = "cinepara"      # DMM.com 月額動画 / シネマパラダイス
  FLOOR_DGC           = "dgc"           # DMM.com 月額動画 / ギャルコレ
  FLOOR_FLEAGUE       = "fleague"       # DMM.com 月額動画 / Fリーグ

  # https://affiliate.dmm.com/api/reference/com/digital_book/all/
  SERVICE_DIGITAL_BOOK = "digital_book" # DMM.com 電子書籍
  FLOOR_COMIC          = "comic"        # DMM.com 電子書籍 / コミック
  FLOOR_NOVEL          = "novel"        # DMM.com 電子書籍 / 小説
  FLOOR_MAGAZINE       = "magazine"     # DMM.com 電子書籍 / 雑誌
  #FLOOR_PHOTO         = "photo"        # DMM.com 電子書籍 / 写真集
  FLOOR_AUDIO          = "audio"        # DMM.com 電子書籍 / オーディオブック
  FLOOR_MOVIE          = "movie"        # DMM.com 電子書籍 / 動画

  # https://affiliate.dmm.com/api/reference/com/pcsoft/
  SERVICE_PCSOFT = "pcsoft" # DMM.com PCゲーム/ソフトウェア
  #FLOOR_PCGAME  = "pcgame" # DMM.com PCゲーム/ソフトウェア / PCゲーム
  FLOOR_PCSOFT   = "pcsoft" # DMM.com PCゲーム/ソフトウェア / ソフトウェア

  # https://affiliate.dmm.com/api/reference/com/mono/all/
  #SERVICE_MONO   = "mono"      # DMM.com 通販
  #FLOOR_DVD      = "dvd"       # DMM.com 通販 / DVD
  FLOOR_CD        = "cd"        # DMM.com 通販 / CD
  #FLOOR_BOOK     = "book"      # DMM.com 通販 / 本・コミック
  FLOOR_GAME      = "game"      # DMM.com 通販 / ゲーム
  FLOOR_HOBBY     = "hobby"     # DMM.com 通販 / ホビー
  FLOOR_KADEN     = "kaden"     # DMM.com 通販 / 家電・パソコン
  FLOOR_HOUSEWARE = "houseware" # DMM.com 通販 / 生活・日用品
  FLOOR_GOURMET   = "gourmet"   # DMM.com 通販 / 食品・飲料

  # https://affiliate.dmm.com/api/reference/com/rental/all/
  #SERVICE_RENTAL   = "rental"     # DVD/CDレンタル
  #FLOOR_RENTAL_DVD = "rental_dvd" # DVD/CDレンタル / 月額DVDレンタル
  #FLOOR_PPR_DVD    = "ppr_dvd"    # DVD/CDレンタル / 単品DVDレンタル
  FLOOR_RENTAL_CD   = "rental_cd"  # DVD/CDレンタル / 月額CDレンタル
  FLOOR_PPR_CD      = "ppr_cd"     # DVD/CDレンタル / 単品CDレンタル
  #FLOOR_SET_DVD    = "set_dvd"    # DVD/CDレンタル / セットレンタルDVD
  FLOOR_SET_CD      = "set_cd"     # DVD/CDレンタル / セットレンタルCD
  #FLOOR_COMIC      = "comic"      # DVD/CDレンタル / コミック

  # https://affiliate.dmm.com/api/reference/com/iroiro/
  SERVICE_IROIRO       = "iroiro"         # いろいろレンタル
  FLOOR_FASHION_LADIES = "fashion_ladies" # いろいろレンタル / レディース
  FLOOR_FASHION_MENS   = "fashion_mens"   # いろいろレンタル / メンズ
  FLOOR_RENTAL_IROIRO  = "rental_iroiro"  # いろいろレンタル / いろいろレンタル
end
