require "pry"

def reformat_languages(languages)
  new_hash = {}
  oo_array =[]
  funcitonal_array = []


  languages.each do |style, data|
    styles_array = []
    data.each do |language, type|
      if style == :oo
        oo_array << language
      elsif style == :functional
        funcitonal_array << language
      end
      new_hash[language] = {}
      type.each do |type, info|
        new_hash[language][type] = info
      end
      #binding.pry
      # styles_array << style
      # new_hash[language][:style] = styles_array.uniq
      new_hash[language][:style] = []
    end
  end

  oo_array.each do |oo_language|
    new_hash.each do |language, data|
      if oo_language == language
        new_hash[language][:style] << :oo
        break
      end
    end
  end

  funcitonal_array.each do |functional_language|
    new_hash.each do |language, data|
      if functional_language == language
        new_hash[language][:style] << :functional
        break
      end
    end
  end
# binding.pry
new_hash
end
