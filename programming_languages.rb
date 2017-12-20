def reformat_languages(languages)
  final = {}
  languages.each do |key, value|

   value.each do |key1, value1|

       value1.each do |type, com|

         final[key1] = {:type => com, :style => [key]}
       end
   end
     end
final[:javascript][:style].unshift(:oo)
  final

end
