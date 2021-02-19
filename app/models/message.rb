class Message < ApplicationRecord
    before_save :normalize_mconf

    private
        def normalize_mconf
            aux_text = self.content.downcase
            aux_text1 = aux_text
            aux_text = aux_text.split(/\W+/)
            aux_text.each do |word|
                if word == "mconf"
                    str_replace = format_mconf
                    aux_copy = self.content
                    idx = aux_text1.index('mconf')
                    self.content[aux_copy[idx..idx+4]] = str_replace
                end
            end
        end

        def format_mconf
            str = '<span class="color' + rand(1..7).to_s
            str = str + '">Mconf</span>'
            return str
        end

end
