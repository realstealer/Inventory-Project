# Inventory-Project
Учет оборудования в отделе ИТ. Программа создается, как альтернатива платным решениям наподобие "IT Invent" и ему подобным.

* В качестве СУБД пока поддерживает только MS SQL
* Включает в себя справочники по моделям имеющегося оборудования, его типам, статусам оборудования, статусам заказов, местоположениям, поставщикам и пользователям.
* Пользователи импортируются из Active Directory. Используются поля DisplayName, SamAccountName, ObjectSID, Mail. Сопоставление ведется по полю ObjectSID
* Поддерживает работу с заказами. Оборудование, принятое по заказу, вносится в базу

# Для начала работы необходимо:
* на сервере СУБД создать базу данных для программы и выполнить скрипт create.sql для формирования ее структуры
* запустить программу, указать в разделе "Настройки" адрес сервера, имя базы и параметры авторизации (Windows-авторизация или по логину/паролю)
* перезапустить программу, заполнить как минимум одной записью справочники пользователей, местоположений и статусов оборудования для настройки значений по умолчанию для оборудования, принимаемого из заказов
* начать работать

Программа пока не поддерживает поиск, сортировки, фильтрацию и не выводит какую-либо отчетность, все это будет в ближайшие месяцы добавляться и дополняться

Я не профессионал, поэтому энтерпрайз-качества не ожидается, просто в меру удобный интерфейс и возможность выполнять поставленную задачу.
