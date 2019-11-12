module Txt
    def read_file(flag, name) # Inicializando o arquivo do usuario ou Input padrao

        if flag == true 
            begin
                
                puts "Digite o nome do arquivo"
                filename = gets.chomp
                raise TypeError, "input recebido nao eh txt" unless (filename[-3..-1] == "txt")
                raise TypeError, "input recebido nao eh string" unless (filename.is_a? String)
                raise IOError, "arquivo nao existente no diretorio /Resources" unless File.exists?("./Resources/"+filename)
                file = File.open("./Resources/"+filename)
                lines = file.read.split("\n")
                lines.each do |x|
                    x.downcase!
                    x = x.split(" ")
                end
                return lines
                rescue TypeError => e
                    file = File.open("./Resources/Input.txt")
                    lines = file.read.split("\n")
                    lines.each do |x|
                        x.downcase!
                        x = x.split(" ")
                    end
                    puts e
                    puts "Usando arquivo padrao(Input.txt)"
                    return lines
                rescue  IOError => e
                    file = File.open("./Resources/Input.txt")
                    lines = file.read.split("\n")
                    lines.each do |x|
                        x.downcase!
                        x = x.split(" ")
                    end
                    puts e
                    puts "Usando arquivo padrao(Input.txt)"
                    return lines
            end

        else
            begin
                raise TypeError, "input recebido nao eh txt" unless (name[-3..-1] == "txt")
                raise TypeError, "input recebido nao eh string" unless (name.is_a? String)
                raise IOError, "arquivo nao existente no diretorio /Resources" unless File.exists?("./Resources/"+name)
                file = File.open("./Resources/"+name)
                lines = file.read.split("\n")
                lines.each do |x|
                    x.downcase!
                    x = x.split(" ")
                end
                return lines
            rescue TypeError => e
                puts e
                return []
            rescue  IOError => e
                puts e
                return []
            end
        end
    end
end