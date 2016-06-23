
SampleCode.dll:
	mcs SampleCode.cs -target:library

SampleCodeDocs: SampleCode.dll
	mdoc update SampleCode.dll -o SampleCodeDocs

SampleCode.tree: update
	mdoc assemble -o SampleCode SampleCodeDocs
	mkdir -p monodoc.renderer.sample/bin/Debug
	mkdir -p monodoc.renderer.sample/bin/Release
	cp SampleCode.tree monodoc.renderer.sample/bin/Debug/
	cp SampleCode.tree monodoc.renderer.sample/bin/Release/
	cp SampleCode.zip monodoc.renderer.sample/bin/Debug/
	cp SampleCode.zip monodoc.renderer.sample/bin/Release/
	cp SampleCode.source monodoc.renderer.sample/bin/Debug/
	cp SampleCode.source monodoc.renderer.sample/bin/Release/

build:SampleCode.dll
update: SampleCodeDocs
assemble: SampleCode.tree

clean: 
	rm SampleCode.dll SampleCode.tree SampleCode.zip
	rm -rf SampleCodeDocs
	rm -rf monodoc.renderer.sample/bin
	rm -rf monodoc.renderer.sample/obj