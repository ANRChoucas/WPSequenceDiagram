SOURCE_FILES := $(wildcard *.plantuml)
PNG_FILES := $(SOURCE_FILES:.plantuml=.png)
SVG_FILES := $(SOURCE_FILES:.plantuml=.svg)

PLANTUML_OPTIONS := -charset UTF-8

all: $(PNG_FILES)

create_svg: $(SVG_FILES)

create_png: $(PNG_FILES)

%.png: %.plantuml
	plantuml $(PLANTUML_OPTION) $<	

%.svg: %.plantuml
	plantuml $(PLANTUML_OPTION) -tsvg $<

clean:
	rm -f ./*.svg
	rm -f ./*.png
