require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  new_hsh = {}
  languages.each do |style, lang_hsh|
    var = style
    lang_hsh.each do |language, type|
      if new_hsh.include? (language)
        new_hsh[language][:style].push(var)
      else
        new_hsh[language] = type
        new_hsh[language][:style] = [var]
      end
    end
  end
  new_hsh
end

# def reformat_languages(languages)
