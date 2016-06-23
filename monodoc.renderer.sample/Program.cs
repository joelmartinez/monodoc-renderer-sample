using System;
using IO = System.IO;
using Monodoc;

namespace monodoc.renderer.sample
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Let's Render!");

			string contentPath = IO.Path.GetDirectoryName(typeof(MainClass).Assembly.Location);
			RootTree tree = RootTree.LoadTree(contentPath, includeExternal:false);

			MyRenderer renderer = new MyRenderer();

			string renderedOutput = tree.RenderUrl("T:My.Sample.SomeClass", renderer);

			Console.WriteLine(renderedOutput);
		}
	}
}
