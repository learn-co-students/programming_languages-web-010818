def reformat_languages(languages)

  newHash={}

  languages.each do |style, langType|
    langType.each do |language, hashType|
      if newHash.has_key?(language)
        newHash[language][:style] << style
      else
        newHash[language] = hashType
        newHash[language][:style] = [style]
      end
    end
  end
  newHash
end
