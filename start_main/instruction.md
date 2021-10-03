Comme en c# point d'entre dans la programme Dart se trouve dans la methode main.
En ravanche en dart on n'est pas obligé à crée une class dedier. 
La fonction main() est une méthode prédéfinie dans Dart. Cette méthode sert de point d'entrée à l'application. Un script Dart a besoin de la méthode main() pour être exécuté. 
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