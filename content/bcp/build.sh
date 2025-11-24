for file in *.md;
do
    pandoc ${file} --columns=10  --pdf-engine=xelatex -V logo="gcve.png" -V book=false -V titlepage-rule-color="2e58e3" -V titlepage=true -V colorlinks=true -V linkcolor=blue  -V urlcolor=red  -V toccolor=gray --number-sections -V toc-own-page=true -V footnotes-pretty=true -V table-use-row-color=true --template eisvogel  -o ${file%%.*}.pdf  --toc --listings
    mv *.pdf ../../static/files/bcp
done 

