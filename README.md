# Практическая работа №5

### Тема: Работа с ShareProvider
### Цель работы: реализовать передачу данных через параметр arguments и сохранение данных в SharedPrefrences, а также восстановление данных после закрытия приложения. Если есть данные в SharedPrefrences открыть 2 экран, если данных нет, то открыть 1 экран. 
###
### Ход работы:
### Для начала работы будет необходима следующая библиотека
![image](https://user-images.githubusercontent.com/99389490/206819108-6e35eaf1-a33c-470a-a032-d8397df5baf5.png)
###
### Для передачи данных необходимо использовать SharedPreferences. Для начала необходимо создать переменную _counter, куда будет записываться результат записи SharedPreferences. Далее создается initState, где будет получаться значение sharePreferences и записываться в переменную _counter. _incrementCounter помогает в записи в sharePreferences, туда записывается новое значение. Для того, чтобы данные задавать используется set, а для получения используется get
![image](https://user-images.githubusercontent.com/99389490/206819640-aa2bfb47-c805-4e0d-9783-19c458d1d254.png)
![image](https://user-images.githubusercontent.com/99389490/206819613-2bbb878f-cd13-4c34-ba6f-8afea9fd59d5.png)
![image](https://user-images.githubusercontent.com/99389490/206819336-99a3451c-4f0d-4b00-a7f6-28e6f9de6715.png)
###
### Далее происходит создание файла screen.dart
![image](https://user-images.githubusercontent.com/99389490/206819830-9a4bf67b-aea3-440e-a08d-6ad419acf1dd.png)
###
### В файле screen.dart создается переменная count для того, чтобы в нее были переданы данные из основного окна приложения. arguments были использованы для того, чтобы передать объекты (сообщение и значение счетчика)
![image](https://user-images.githubusercontent.com/99389490/206819886-b59395aa-4a9e-48f7-9783-bb06156189d9.png)
###
### После cоздается кнопка в файле main.dart, которая помогает передавать значение (число) и сообщение на второе окно 
![image](https://user-images.githubusercontent.com/99389490/206821683-3b0b431b-323c-47d9-b3e6-17b656333198.png)
###
### Так же необходимо прописать кнопку увеличения значения
![image](https://user-images.githubusercontent.com/99389490/206821093-eae7101e-307e-4b83-83c8-805e6972214e.png)
###
### Далее будут продемонстрированы результаты работы программы. Присутствуют счетчик, вывод значения на второй экран, возвращение на основной экран
![image](https://user-images.githubusercontent.com/99389490/206821182-3af31053-3a58-42b5-afbd-4897f8290c4b.png)
![image](https://user-images.githubusercontent.com/99389490/206821198-dc4010ed-9eef-44fb-a3e4-59e85246c373.png)
![image](https://user-images.githubusercontent.com/99389490/206821210-5b1819f4-87f0-4bf6-96c6-9e9cfa07f723.png)
###
### Вывод: В данной практической работе были реализованы передача данных через параметр arguments и сохранение данных в SharedPrefrences, а также восстановление данных после закрытия приложения. Реализовано существование данных в SharedPrefrences и открытие второго экрана, а также отстуствие данных.
