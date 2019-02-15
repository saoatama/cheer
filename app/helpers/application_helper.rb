module ApplicationHelper
    def default_meta_tags
    {
      site: '竿頭のアプリ置き場',
      title: '参考文献の書き方|引用文献の形式が簡単にできる便利なwebアプリ',
      reverse: true,
      charset: 'utf-8',
      description: 'description',
      keywords: '参考文献 書き方, 診断メーカー',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      twitter: {
        card: 'summary',
        site: '@saoatma',
      }
    }
  end
  
  def cocktail_meta_tags
      {
      site: '竿頭のアプリ置き場',
      title: '推しCPカクテルメーカー|貴女の推しカプが今夜飲むお酒は…？',
      reverse: true,
      charset: 'utf-8',
      description: 'description',
      keywords: '診断メーカー, 推しCP, BL, 診断メーカー',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      twitter: {
        card: 'summary',
        site: '@saoatma',
      }
    }
  end
end
