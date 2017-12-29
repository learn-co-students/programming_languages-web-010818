require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, style_data|
    style_data.each do |language, language_data|

      if new_hash[language] == nil
        new_hash[language] = language_data

      end

      if new_hash[language][:style] == nil
        new_hash[language][:style] = [style]
      else
        new_hash[language][:style] << style
      end
    end
  end
  
  new_hash
end
