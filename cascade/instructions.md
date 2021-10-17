# Opérations cascade 
Des opérations en cascade
est un sucre syntaxique en `Dart` qui permet de faire une séquence des opérations sur le même `objet`. Vous pouvez utiliser le `double point` pour appeler des fonctions sur des objets et accéder aux propriétés. Cet `opérateur` est simplement utilisé pour rendre votre code plus propre et concis. Cela vous évite souvent de créer des variables temporaires.

# Extensions
Les méthodes d'extensions
vous permettent `d'ajouter` des méthodes aux types existants sans créer un nouveau type, recompiler ou modifier d'une autre manière le type d'origine. Les méthodes d'extension sont des méthodes statiques, mais elles sont appelées comme s'il s'agissait des méthodes d'instance sur le type étendu.


```cs
using System;

namespace csharp_test_console
{
    public static class SomeClass
    {
        public static MyOtherClass SomeMethod(this MyClass myClass)
        {
            return new MyOtherClass(int.Parse(myClass.MyProp));
        }
    }

    public class MyClass
    {
      public string MyProp;
    }
    public class MyOtherClass
    {
      public int MyProp;
    }
}
```
