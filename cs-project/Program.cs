using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyProject
{
    class Program
    {
        static void Main(string[] args)
        {
            int i = 0;
            int j = 1;
            int k;
            if (i == 0)
            {
               i = 1;
            }
            j += 1;
            int[] n1 = new int[] {2, 4};
            setValue(n1);
            setValue(null);
		}
        static private void setValue(params int[] vals)
        {
            int value;
            if (vals == null)
            {
                value = 0;
            }
			else
			{
                switch (vals.Length)
                {
                   case 1: value = vals[1]; break;
                   case 2: value = vals[2]; break;
                   default: value = 0; break;
                }
            }			

        }
    }
   
}
