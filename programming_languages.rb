def reformat_languages(languages)
  # your code here
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

new_hash = {

}

  languages.each do |style, names|
    names.each do |name, type|
      new_hash[name] = {} if new_hash[name] == nil
      type.each do |key, val|
        new_hash[name][key] = val
        new_hash[name][:style] = [] if new_hash[name][:style] == nil
        new_hash[name][:style] << style
      end
    end
  end
  new_hash
end
