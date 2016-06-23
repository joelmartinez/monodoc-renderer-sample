using System;
using System.Collections.Generic;
using Monodoc;

namespace monodoc.renderer.sample
{
	public class MyRenderer : IDocGenerator<string>
	{
		public MyRenderer()
		{
		}

		public string Generate(HelpSource hs, string internalId, Dictionary<string, string> context)
		{
			throw new NotImplementedException();
		}
	}
}

