# Abstractions

Abstraction c'est un principe clef d'`OOP` et Dart donne tous les moyens pour l'implémenter. Contrairement à `C#`, `Dart` n'a pas d'interfaces, mais vous avez des `class`es abstraites que vous devez implémenter. Si vous souhaitez hériter, vous `extend`ez la classe. Vous ne pouvez `extend `qe’une classe et implémenter plusieurs classes. De plus Dart offres également les `Mixin`'s. Un `Mixin` revient à attacher une classe et à ajouter ses fonctionnalités à la classe, sans en hériter. Ceci est également similaire aux implémentations d'interface en `C# 8.0.`

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