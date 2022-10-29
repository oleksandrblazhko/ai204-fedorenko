@startuml

title Conditional - Activity Diagram measurements() 

start

:ПП починає пошук інформації про повітря\nзгідно з вхідними даними;


if (Користувач указав місце) then (так)
  if (Чи є дані по цьому місцю?) then (так)
    : Вивести дані про повітря;
  else (ні)
    : Помилка: Відсутні дані по цьому місцю!;
  endif
else (ні)
  :Помилка: Вкажіть місце!;
endif

stop

@enduml
