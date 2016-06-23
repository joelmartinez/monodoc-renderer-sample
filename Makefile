
SampleCode.dll:
	mcs SampleCode.cs -target:library

SampleCodeDocs: SampleCode.dll
	mdoc update SampleCode.dll -o SampleCodeDocs

SampleCode.tree: update
	mdoc assemble -o SampleCode SampleCodeDocs

build:SampleCode.dll
update: SampleCodeDocs
assemble: SampleCode.tree

clean: 
	rm SampleCode.dll SampleCode.tree SampleCode.zip
	rm -rf SampleCodeDocs
	rm -rf monodoc.renderer.sample/bin
	rm -rf monodoc.renderer.sample/obj