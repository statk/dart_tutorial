Dart est un langage mono-thread. Mais ça signifie pas que vous devez executer les operations lourdes dans la thread principalce.
Bien au contraraire en Dart les mechanismes multi-threades sont prévu. .Net prends la responsabilité de crée les threades en soit et la memoire est partagé entre difirents threads. 
Cependant, en Dart chaque thread est dans son propre isolat avec sa propre mémoire. Chaque thread est comme un nouvelle instance de la programme.
