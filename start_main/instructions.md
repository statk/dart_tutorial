# main()
Comme en c# point d'entrée dans le programme `Dart` se trouve dans la méthode main. En revanche en `Dart` on n'est pas obligé à créer une class dediée. La fonction `main()`  est une méthode prédéfinie en `Dart`. Cette méthode sert de point d'entrée à l'application. Un script Dart a besoin de la méthode « main() » pour être exécuté.

```cs using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;

namespace MyFirstCoreApp
{
    public class Program
    {
        public static void Main(string[] args)
        {
            BuildWebHost(args).Run();
        }

        public static IWebHost BuildWebHost(string[] args) =>
            WebHost.CreateDefaultBuilder(args)
                .UseStartup<Startup>()
                .Build();
    }
} ```