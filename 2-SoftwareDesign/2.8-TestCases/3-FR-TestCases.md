### Опис тестових сценаріїв для функції send_air()

|FR id|	TC id	|Опис кроків тестового сценарію|	Опис очікуваних результатів|
|:-:|:-:|:-|:-:|
|FR1.3	|TC 1.1|  Початкові умови: користувач вводить своє місце, ім'я та дату<br> Кроки сценарію: <br> 1) name = Karina <br> 2) place = Cabinet32 <br> 3) date = 3.03.2003 |Результат = 1|
|FR1.3	|TC 1.2|	Початкові умови: користувач вводить своє місце, ім'я та дату<br> Кроки сценарію: <br> 1) name = Karina <br> 2)place = Cabinet32 <br> 3) date = 3 березня 2003  |Результат = -1|
|FR1.3	|TC 1.3| 	Початкові умови: користувач вводить своє місце, ім'я та дату<br> Кроки сценарію: <br> 1) name = Karina <br> 2)place = cabinet32 <br> 3) date = 3.03.2003  |Результат = -2|
|FR1.3  |TC 1.4|	Початкові умови: користувач вводить своє місце, ім'я та дату<br> Кроки сценарію: <br> 1) name = Karina <br> 2) place = cabin$t32 <br> 3) date = 3.03.2003  |Результат = -2|
|FR1.3	|TC 1.5|	Початкові умови: користувач вводить своє місце, ім'я та дату <br> Кроки сценарію: <br> 1) name = Karina2 2) place = Cabinet32 <br> 3) date = 3.03.2003 |Результат = -3|
|FR1.3	|TC 1.6|	Початкові умови: користувач вводить своє місце, ім'я та дату <br> Кроки сценарію: <br> 1) name = Karina 2) place = C <br> 3) date = 3.03.2003 |Результат = -2|
