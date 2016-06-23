
SampleCode.dll:
	mcs SampleCode.cs -target:library

build:SampleCode.dll

update: SampleCode.dll
	mdoc assemble

assemble: update
	mdoc assemble