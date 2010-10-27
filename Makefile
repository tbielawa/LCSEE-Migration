#!/usr/bin/make

XSLCHUNK=~/docbook-xsl-1.73.2.dfsg.1/html/chunk.xsl
XSLSINGLE=~/docbook-xsl-1.73.2.dfsg.1/html/docbook.xsl

html:
	xsltproc --xinclude -o html/migration.html $(XSLSINGLE) Migration.xml

chunk:
	mkdir -p html
	xsltproc --stringparam base.dir html/ --xinclude $(XSLCHUNK) Migration.xml

all: html chunk

clean:
	rm -f html/*
