# all: publishing/1.2d1

a="archiving/1.2d1"
mkdir $a/xsd
mkdir $a/rng
./merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/archiving/1.2d1/xsd/JATS-Archiving-1-2d1-MathML2-XSD.zip  $a/xsd
./merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/archiving/1.2d1/xsd/JATS-Archiving-1-2d1-OASIS-MathML2-XSD.zip $a/xsd
./merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/archiving/1.2d1/xsd/JATS-Archiving-1-2d1-MathML3-XSD.zip  $a/xsd
./merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/archiving/1.2d1/xsd/JATS-Archiving-1-2d1-OASIS-MathML3-XSD.zip $a/xsd
./merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/archiving/1.2d1/rng/JATS-Archiving-1-2d1-MathML2-RNG.zip   $a/rng
./merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/archiving/1.2d1/rng/JATS-Archiving-1-2d1-OASIS-MathML2-RNG.zip $a/rng
./merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/archiving/1.2d1/rng/JATS-Archiving-1-2d1-MathML3-RNG.zip  $a/rng
./merge.sh ftp://ftp.ncbi.nih.gov/pub/jats/archiving/1.2d1/rng/JATS-Archiving-1-2d1-OASIS-MathML3-RNG.zip $a/rng

