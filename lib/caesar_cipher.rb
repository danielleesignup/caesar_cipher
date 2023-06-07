def alpha?(char)
    char.upcase != char.downcase
end

def caesar_cipher(string, shift)
    new = ""
    string.each_char do |i|
        if alpha?(i)
            shifted = (i.ord + shift).chr
            if !alpha?(shifted)
                shifted_modified = (shifted.ord - 26).chr
                new += shifted_modified
            else
                new += shifted
            end
        else
            new += i
        end
    end
    return new
end

# puts caesar_cipher("What a string!", 5) 