class HomePage
    include Capybara::DSL

    def go
        visit '/'
    end

    def ultimas_ofertas()
        ofertas_principais = all('.produto-item') #busca todos os produtos
    end

    def ofertas_principais(table)
        Produto = table.hashes
    end

end