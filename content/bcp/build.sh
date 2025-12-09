for file in *.md;
do
    pandoc ${file} --columns=10  --pdf-engine=xelatex -V logo="gcve.png" -V book=false -V titlepage-rule-color="2e58e3" -V titlepage=true -V colorlinks=true -V linkcolor=blue  -V urlcolor=red  -V toccolor=gray --toc-depth=6 -V number-offset=2,6 --template eisvogel  -o ${file%%.*}.pdf  -V toc-own-page=true -V first-chapter=1 -V titlepage-logo="gcve.png" -V listings-no-page-break=true -V author="GCVE.eu"--toc --listings
    mv *.pdf ../../static/files/bcp
done 

