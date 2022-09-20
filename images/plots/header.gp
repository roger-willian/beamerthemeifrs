# Limpa o ambiente
reset
set macros

# Definições de cores

## Cores do detalhe do fundo do modelo
verde         = '#18563a'   # verde base
verdem        = '#237352'   # verde médio
verdec        = '#328e6b'   # verde claro
verded        = '#0e6d3a'   # verde dessaturado
verdedm       = '#297f5a'   # verde dessaturado médio
verdedc       = '#3ea87e'   # verde dessaturado claro

## Cores do detalhe da bandeira
verdexc       = '#42b283'   # verde extra claro
vermelho      = '#ee3030'   # vermelho
amarelo       = '#ede653'   # amarelo

## Cores do logo
verdelogo     = '#32a041'   # verde do logo
vermelhologo  = '#c8191e'   # vermelho do logo
preto         = '#000000'   # fonte do logo
branco        = '#ffffff'   # fundo do logo

## Cores extra
vermelhoe     = '#c21010'   # vermelho escuro
amareloe      = '#d0c716'   # amarelo escuro

cinza         = '#888888'
cinzaescuro   = '#333333'

# Paleta de cores
fundo         = branco
neutraA       = cinza
neutraB       = cinzaescuro
neutraC       = preto

primaria      = vermelho
secundaria    = amarelo
terciaria     = verdexc
quarta        = verdec
quinta        = verdedm
sexta         = verde

# Linhas e pontos

## Tamanho do ponto
ponto = 0.5

## Espacinho na volta das amostras
set pointintervalbox 1.75*ponto

## Estilos principais
set style line  1 lt 1 pt 7 ps ponto lw 0.7 dt    1 lc rgbcolor primaria
set style line  2 lt 1 pt 7 ps ponto lw 0.7 dt    1 lc rgbcolor secundaria
set style line  3 lt 1 pt 7 ps ponto lw 0.7 dt    1 lc rgbcolor terciaria
set style line  4 lt 1 pt 7 ps ponto lw 0.7 dt    1 lc rgbcolor quarta
set style line  5 lt 1 pt 7 ps ponto lw 0.7 dt    1 lc rgbcolor quinta
set style line  6 lt 1 pt 7 ps ponto lw 0.7 dt    1 lc rgbcolor sexta

## Estilos secundários
set style line 20 lt 1 pt 0 ps ponto lw 0.5 dt    3 lc rgbcolor neutraA
set style line 21 lt 1 pt 0 ps ponto lw 0.5         lc rgbcolor neutraB


# Caminhos, arquivos e extensões
extdados      = 'dat'
extfig        = 'tex'
dirdados      = './data/'
dirfig        = '../latex/'
figura        = 'dirfig.substr(ARG0,1,strstrt(ARG0,".")).extfig'
dados(nome)   = dirdados.nome.'.'.extdados

# Configurações gerais
set key right bottom box ls 21 samplen 2 spacing 1.2
set grid back ls 20
set border back ls 21
set xtics nomirror
set ytics nomirror
set decimalsign '.'


# Configurações do terminal
proporcao     = 6.0/4.0            # L/A
larguramm     = 97.5               # L em mm
largura       = larguramm/25.4     # L em pol
altura        = largura/proporcao  # A em pol
autor         = 'Fulano de Tal (fulano.de.tal@exemplo.com)'
cabecalho     = '\usepackage[T1]{fontenc}'."\n".\
                '\usepackage[default]{opensans}'."\n".\
                '\usepackage[brazilian]{babel}'."\n".\
                '\input{brazilian_comma.ldf}'."\n"
linha         = 5
fonte         = 'hv,10'
terminal      = 'set terminal cairolatex pdf transparent standalone '.\
                'font fonte size largura,altura lw linha colortext '.\
                'header ''\pdfinfo{/Author (''.autor.'')}''.cabecalho '.\
                'background rgbcolor fundo'

## Reconfigura o terminal
@terminal
