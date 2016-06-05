defmodule IsThirteen.Consts do
  @moduledoc """
  Contains the constants used to check if something is thirteen.  This module
  also contains the functions to check against these consts.
  """
  @constants [
    "xiii", # Roman numeral 13

    "https:#en.wikipedia.org/wiki/This_Is_Thirteen", # Because it is thirteen
    "https:#scontent.cdninstagram.com/hphotos-xtf1/t51.2885-15/s320x320/e35/12237511_444845689040315_1101385461_n.jpg", # Just because we can
    "https:#www.youtube.com/watch?v=pte3Jg-2Ax4", # Thirteen by Big Star
    "https:#www.youtube.com/watch?v=33Kv5D2zwyc", # The best Johny Cash's song
    "remy hadley", # And because she's "Thirteen"
    "olivia wilde", # AND because SHE's "Thirteen"
    "baker's dozen", # Bakers gonna bake
    "dr. remy beauregard hadley", # Why not 13's real name?!
    "patty tsai", # 蔡依珊 is a public figure in Taiwan. Her Chinese name sounds like "13".
    "https:#s3.amazonaws.com/rapgenius/calle13.jpg", # Calle 13, famous Puerto Rican band
    "jason fly", # XIII of The XX
    "http:#www.imdb.com/title/tt0798817/", # 13 (2010)

    "dilma", #Dilma, president of Brazil. Her number is 13: https:#www.google.com/search?q=dilma+13
    "PT", # PT is Brazilian political party represented by the number 13
    "Washington Luís", # Brazil's thirteenth president
    "Millard Fillmore", # Thirteenth President of the United States
    "https:#s3.amazonaws.com/rapgenius/calle13.jpg", # Calle 13, famous latin american band

    "sharon carter", # Agent 13

    "weedle", ##13 Pokémon

    #Adding |3 and !3 because they basically look like thirteen
    "|3",
    "!3",

    # Password variations
    "th1rt33n",
    "th1rte3n",
    "th1rteen",
    "thirt3en",
    "thirt33n",
    "thirte3n",

    # Languages
    "thirteen", # English
    "ثلاثة عشر", # Arabic

    "يج", #Arabic (gematria)

    "سیزده", # Persian
    "۱۳", # Persian number

    "dertien", # Afrikaans / Dutch
    "dertiendertien", # Double Dutch
    "тринадесет", # Bulgarian
    "тринайсет", # Also Bulgarian
    "tretze", # Catalan
    "napulo ug tulo", # Cebuano
    "十三", # Chinese / Japanese
    "拾參", # Chinese (traditional, upper case)
    "拾叁", # Chinese (simplified, upper case)
    "拾叄", # Chinese (variant)
    "拾参", # Chinese (variant)
    "サーティーン", # Japanese
    "１３", # Japanese full-width
    "trinaest", # Croatian / Serbian (latin)
    "tretten", # Danish / Norwegian
    "senthi", #Dothraki
    "þrettán", # Icelandic, following are different inflections
    "þrettándi", # e. thirteenth
    "þrettánda",
    "þrettándinn", # e. the thirteenth
    "þrettándann",
    "þrettándanum",
    "þrettándans",
    "þrettándar", # e. multiple thirteenths
    "þrettándu",
    "þrettándum",
    "þrettándarnir", # e. the multiple thirteenths
    "þrettándana",
    "þrettándunum",
    "þrettándanna",
    "threttan", # strings without special icelandic characters
    "threttandi",
    "threttanda",
    "threttandinn",
    "threttandann",
    "threttandanum",
    "threttandans",
    "threttandar",
    "threttandu",

    "threttandum",
    "threttandarnir",
    "threttandana",
    "threttandunum",
    "threttandanna",# end of Icelandic

    "threttandum", # end of Icelandic
    "třináct", # Czech

    "kolmteist", # Estonian
    "labintatlo", # Filipino
    "kolmetoista", # Finnish
    "treize", # French
    "dreizehn", # German
    "δεκατρία", # Greek
    "drizäh", # Swiss German
    "wa’maH wej", # Klingon
    "‘umikūmākolu", # Hawaiian
    "שלוש עשרה", # Hebrew 
    "שלושעשרה", # Hebrew (without space)
    "שְלֹש- עֶשְֹרֵה", # Hebrew (with punctuation)
    "שלושה עשר", # Hebrew (male form)
    "שלושהעשר", # Hebrew (male form, without space)
    "שְלֹשָה- עָשָֹר", # Hebrew (male form, with punctuation)
    "יג", # Hebrew (gematria)
    "י״ג", # Hebrew (gematria - apostrophes)
    "quainel", # Quenya
    "mînuiug", # Sindarin
    "tizenhárom", # Hungarian
    "trí déag", # Irish
    "tredici", # Italian
    "ಹದಿಮೂರು", #Kannada (for thirteen)
    "೧೩",#Kannada (for 13)
    "열셋", # Korean
    "sêzdeh", # Kurdish
    "tredecim", # Latin
    "trīspadsmit", # Latvian
    "trylika", # Lithuanian
    "dräizéng", # Luxembourgish
    "тринаесет", # Macedonian
    "tiga belas", # Malay
    "പതിമൂന്ന്", #Malayasm
    "तेरा", # Marathi (१३)
    "арван", # Mongolian
    ".---- ...--", # Morse code
    "irteenthay", # Pig Latin
    "trzynaście", # Polish
    "treze", # Portuguese
    "ਤੇਰਾਂ", # Punjabi - thirteen
    "੧੩", # Punjabi Numeral - 13
    "treisprezece", # Romanian
    "тринадцать", # Russian
    "тринаест", # Serbian (cyrillic)
    "trinásť", # Slovak
    "trinajst", # Slovenian
    "trece", # Spanish
    "trese", # Tagalog
    "tredici", # Italian
    "on üç", # Turkish
    "dektri", #Speranto
    "tlettax", # Maltese
    "tretton", # Swedish
    "பதின்மூன்று", # Tamil
    "สิบสาม", # Thai
    "๑๓", # Thai Numeral
    "SipSam", # Thai Transcription
    "Sip Sam", # Thai Transcription with space
    "тринадцять", # Ukrainian
    "تیرہ", # Urdu
    "mười ba", # Vietnamese
    "tri ar ddeg", # Welsh
    "דרייַצן", # Yiddish,
    "דרייצן", # Yiddish (without diacritics),
    "kumi na tatu", # Swahili
    "तेह्र", #Nepali
    "१३", #Devanagari
    "तेरह", #Hindi
    "పదమూడు", #Telugu
    # Thirteen pronunciation
    "θərˈtiːn",
  ]

  @case_sensitive_constants [
    # Imaginary 13's
    "13+0i",
    "13 + 13i",
    "13i",

    # B just looks like 13 written closer
    "B",

    #Adding "l" 3 and "I"3 because they basically look like thirteen
    "I3",
    "l3",
    
    #Looks like 13 (flipped horizontally) - E equal to 3 
    "EI",
    "E1",
    "El",
    "E|",

    # May be case sensitive, not sure
    "β" #Think this is beta, which looks like a long 1 mashed together with a 3
  ]

  @doc """
  Check both case sensitive constants and case insensitive. If no matches are
  found, return false.
  ## Examples
  
  iex> "E|" |> IsThirteen.Consts.check_all_thirteens?
  true

  iex> "పదమూడు" |> IsThirteen.Consts.check_all_thirteens?
  true

  iex> "theodore roosevelt" |> IsThirteen.Consts.check_all_thirteens?
  false
  """
  def check_all_thirteens?(val) do
    cond do
      check_case_sensitive_thirteens?(val) -> true
      check_case_insensitive_thirteens?(val) -> true
      true -> false
    end
  end
  
  @doc """
  Checks the value against all values in the constants attribute using a case
  and unicode sensitive check.
  """
  defp check_case_sensitive_thirteens?(val) do
    Enum.any?(
      @case_sensitive_constants, 
      fn cs_constant ->
        val =~ ~r/\A#{ Regex.escape(cs_constant) }\z/u
      end
    )
  end
  
  @doc """
  Checks the value against all values in the constants attribute using a case
  insensitive check (but still unicode sensitive).
  """
  defp check_case_insensitive_thirteens?(val) do
    Enum.any?(
      @constants, 
      fn cis_constant ->
        val =~ ~r/\A#{ Regex.escape(cis_constant) }\z/iu
      end
    )
  end
end
