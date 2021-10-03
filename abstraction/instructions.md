# Abstraction 
c'est un principe clef d'OOP et d'art donne les moyens pour l'implémenter.
`Dart` n'a pas d'interfaces, vous avez des classes abstraites. Vous implement des classes abstraites. Si vous souhaitez hériter, vous extend les classes. 
Vous pouvez extend une classe et implémenter plusieurs classes. Dart prend également en charge Mixin's. Un Mixin revient à attacher une classe et à ajouter ses fonctionnalités à la classe, sans en hériter. Ceci est également similaire aux implémentations d'interface de `C# 8.0`. 
```cs
using System;

namespace csharp_test_console
{
    public interface ISomeInterface
    {
        void SomeMethod();
        string SomeProperty{ get; }
    }

    public abstract class SomeAbstractClass
    {
        protected abstract string AbstractProperty {get;}
        protected void SomePublicAbstractMethod()
        {
            Console.WriteLine($"SomePublicAbstractMethod AbstractProperty value is {AbstractProperty}");
        }
    }
    public class SomeClass : SomeAbstractClass, ISomeInterface
    {
        public string SomeProperty => "Some interface property";

        protected override string AbstractProperty => "Some abstract property";

        public void SomeMethod()
        {
            Console.WriteLine("Hello from interface method");
        }
    }
}
```