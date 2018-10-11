
Функция Index() Экспорт

	Кластер = ОбщегоНазначения.ПолучитьКластерПоИД(ЭтотОбъект);
	Если Кластер = Неопределено Тогда
		Возврат КодСостояния(404);
	КонецЕсли;

	Возврат Представление(Кластер);

КонецФункции

Функция Edit() Экспорт

	Кластер = ОбщегоНазначения.ПолучитьКластерПоИД(ЭтотОбъект);
	Если Кластер = Неопределено Тогда
		Возврат КодСостояния(404);
	КонецЕсли;

	База = Кластер.ИнформационныеБазы().Получить(ЗначенияМаршрута["id"]);
	Если База = Неопределено Тогда
		Возврат КодСостояния(404);
	КонецЕсли;

	Возврат Представление("objectEdit", База);

КонецФункции

Функция Add() Экспорт

	Возврат Представление("НеРеализовано");

КонецФункции