
SampleCode.dll:
	mcs SampleCode.cs -target:library

SampleCodeDocs: SampleCode.dll
	mdoc update SampleCode.dll -o SampleCodeDocs

SampleCode.tree: update
	mdoc assemble -o SampleCode SampleCodeDocs
	mkdir -p monodoc.renderer.sample/bin/Debug/sources
	mkdir -p monodoc.renderer.sample/bin/Release/sources
	cp SampleCode.tree monodoc.renderer.sample/bin/Debug/sources
	cp SampleCode.tree monodoc.renderer.sample/bin/Release/sources
	cp SampleCode.zip monodoc.renderer.sample/bin/Debug/sources
	cp SampleCode.zip monodoc.renderer.sample/bin/Release/sources
	cp SampleCode.source monodoc.renderer.sample/bin/Debug/sources
	cp SampleCode.source monodoc.renderer.sample/bin/Release/sources
	cp monodoc.xml monodoc.renderer.sample/bin/Debug/
	cp monodoc.xml monodoc.renderer.sample/bin/Release/

build:SampleCode.dll
update: SampleCodeDocs
assemble: SampleCode.tree

clean: 
	rm SampleCode.dll SampleCode.tree SampleCode.zip
	rm -rf SampleCodeDocs
	rm -rf monodoc.renderer.sample/bin
	rm -rf monodoc.renderer.sample/obj