# Tema do IFRS para o Beamer

Esse repositório contém um tema de apresentação do Beamer que se assemelha ao modelo de Apresentação com a Identidade Visual Institucional que pode ser encontrado [aqui](https://ifrs.edu.br/institucional/comunicacao/materiais-para-download/).

Esse tema ainda utiliza elementos retirados diretamente do Manual de Identidade Institucional do IFRS e do Manual de Aplicação da Marca dos Institutos Federais, disponíveis [aqui](https://ifrs.edu.br/institucional/comunicacao/guias-e-manuais/).

# Gerar o PDF

São sugeridas duas opções para gerar o PDF com os slides:

1. Gerar localmente com o latexmk
2. Gerar remotamente com o Overleaf

## Latexmk

Se já tem o TexLive e o latexmk instalados na máquina, para gerar o PDF use o comando:

`latexmk -pdf slides.tex`

## Overleaf

Crie um projeto no [Overleaf](https://www.overleaf.com) e copie os arquivos a seguir para o seu projeto:

```
beamercolorthemeifrs.sty
beamerfontthemeifrs.sty
beamerinnerthemeifrs.sty
beamerouterthemeifrs.sty
beamerthemeifrs.sty
bg-16x9.pdf
bg-titulo-16x9.pdf
```

Copie também o arquivo qualquer arquivo de imagem ou de código fonte que for usar.
Por exemplo, copie as imagens para o diretório `images/` e os códigos fonte para o diretório `codes/`.

A partir daí é só editar os arquivos `slides.tex` e `referencias.bib`
# Dependências

Para instalar o TexLive e o latexmk no Ubuntu, use:

```
apt-get -y update && apt-get install -y \
texlive-latex-extra \
texlive-fonts-extra \
texlive-publishers \
texlive-science \
texlive-lang-portuguese \
latexmk
```

## Dependências adicionais

As imagens ilustradas no modelo são geradas automaticamente através de um `Makefile`.
Se souber como usar, pode utilizar com as seguintes dependências:

- gnumake
- pdflatex
- inkscape
- draw.io

Para instalar no ubuntu, basta digitar:

```
apt-get -y update && apt-get install -y \
make \
gnuplot \
inkscape \
drawio \
libxml2-utils

snap install drawio
```

A partir daí pode entrar no diretório `images/` e digitar

`make -B`

assumindo que os arquivos seguem o mesmo padrão dos que já estão lá.