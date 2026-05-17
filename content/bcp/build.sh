for file in gcve-bcp*.md;
do
    pandoc ${file} --columns=10  --pdf-engine=xelatex -V book=false -V logo="gcve.png" -V titlepage-rule-color="2e58e3" -V titlepage=true -V colorlinks=true -V linkcolor=blue  -V urlcolor=red  -V toccolor=gray --toc-depth=6 --top-level-division=chapter -Vnumbersections -Vsecnumdepth=4 --template eisvogel  -o ${file%%.*}.pdf  -V toc-own-page=true -H tex.command -V first-chapter=1 -V titlepage-logo="gcve.png" -V author="GCVE.eu" --toc --syntax-highlighting=idiomatic 
    mv *.pdf ../../static/files/bcp
done 

cd extension
for file in gcve-bcp*.md;
do
    pandoc ${file} --columns=10  --pdf-engine=xelatex -V book=false -V logo="gcve.png" -V titlepage-rule-color="2e58e3" -V titlepage=true -V colorlinks=true -V linkcolor=blue  -V urlcolor=red  -V toccolor=gray --toc-depth=6 --top-level-division=chapter -Vnumbersections -Vsecnumdepth=4 --template eisvogel  -o ${file%%.*}.pdf  -V toc-own-page=true -H tex.command -V first-chapter=1 -V titlepage-logo="gcve.png" -V author="GCVE.eu" --toc --syntax-highlighting=idiomatic 
     mv *.pdf ../../../static/files/bcp
done

