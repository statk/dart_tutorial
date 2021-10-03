# La notation en cascade 
est un sucre syntaxique dans `Dart` qui vous permet de faire une séquence d'opérations sur le même objet. Vous pouvez utiliser le `"double point"` pour appeler des fonctions sur des objets et accéder aux propriétés. Cet `"opérateur"` est simplement utilisé pour rendre votre code plus propre et concis. Cela vous évite souvent d'avoir à créer des variables temporaires. 

# Les méthodes d'extension 
vous permettent `"d'ajouter"` des méthodes à des types existants sans créer un nouveau type dérivé, recompiler ou modifier d'une autre manière le type d'origine. Les méthodes d'extension sont des méthodes statiques, mais elles sont appelées comme s'il s'agissait de méthodes d'instance sur le type étendu.  

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
