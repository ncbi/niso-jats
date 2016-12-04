all: publishing/1.1

publishing/1.1:
	@mkdir -p $@
	bash merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/$@/JATS-Publishing-1-1-MathML2-DTD.zip $@
	bash merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/$@/JATS-Publishing-1-1-MathML3-DTD.zip $@
	bash merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/$@/JATS-Publishing-1-1-OASIS-MathML2-DTD.zip $@
	bash merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/$@/JATS-Publishing-1-1-OASIS-MathML3-DTD.zip $@
