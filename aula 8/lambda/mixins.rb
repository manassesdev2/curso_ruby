# Modules
# Os modules possuem duas funções (namespace e mixins):
# 2 - Mixins serve para incluir funcionalidades de module para outro

module ImpressaoDecorada
    def imprimir text
        decoracao = '#' * 100
        puts decoracao 
        puts text
        puts decoracao
    end
end

module Pernas
    include ImpressaoDecorada
    def chute_frontal
        imprimir "chute frontal"
    end

    def chute_lateral
        imprimir "chute lateral"
    end

end

module Bracos
    include ImpressaoDecorada
    def jab_de_direita
        imprimir "jab de direita"
    end

    def jab_de_esquerda
        imprimir "jab de esquerda"
    end
end

class LutadorX
    include Pernas
    include Bracos
end

class LutadorY
    include Pernas
end

lutadorx = LutadorX.new
lutadorx.chute_frontal
lutadorx.jab_de_direita

lutadory = LutadorY.new
lutadory.chute_lateral