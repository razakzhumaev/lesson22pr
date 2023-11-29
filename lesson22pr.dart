import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  ExchangeRates exchangeRates = TodaysRate();
  exchangeRates.todaysRate();
  exchangeRates.choose();
}

abstract class ExchangeRates {
  void todaysRate();
  void choose();
}

class TodaysRate extends ExchangeRates {
  @override
  void todaysRate() {
    print('Курс валют к сому на сегодня :');
    print('Доллар : 87 сом');
    print('Евро : 110 сом');
    print('Российский рубль : 0.9 сом');
    print('Тенге : 0.212321');
  }

  @override
  void choose() {
    print('Хотите обменять другую валюту на сом?(цифра - 1)');
    print('Хотите обменять сом на другую валюту?(цифра - 2)');
    int toSomOrtoAnother = int.parse(stdin.readLineSync()!);

    if (toSomOrtoAnother == 1) {
      print('Теперь выберете валюту');
      print('USD(1)\nEUR(2)\nRUB(3)\nKZT(4)');
      int chooseCurrency = int.parse(stdin.readLineSync()!);
      if (chooseCurrency == 2) {
        print('Сколько SOM хотите приобрести из EUR?');
        int amount = int.parse(stdin.readLineSync()!);
        print('Обмен : ${amount / 110} EUR на $amount SOM');
      } else if (chooseCurrency == 1) {
        print('Сколько SOM хотите приобрести из USD?');
        int amount = int.parse(stdin.readLineSync()!);
        print('Обмен : ${amount / 87} USD на $amount SOM');
      } else if (chooseCurrency == 3) {
        print('Сколько SOM хотите приобрести из RUB?');
        int amount = int.parse(stdin.readLineSync()!);
        print('Обмен : ${amount / 0.9} RUB на $amount SOM');
      } else if (chooseCurrency == 4) {
        print('Сколько SOM хотите приобрести из KZT?');
        int amount = int.parse(stdin.readLineSync()!);
        print('Обмен : ${amount / 0.212321} KZT на $amount SOM');
      } else {
        print('Введите сторого число от 1 до 4');
        choose();
      }
    } else if (toSomOrtoAnother == 2) {
      print('Теперь выберете валюту');
      print('USD(1)\nEUR(2)\nRUB(3)\nKZT(4)');
      int chooseCurrency = int.parse(stdin.readLineSync()!);
      if (chooseCurrency == 1) {
        print('Сколько USD хотите купить?');
        int amount = int.parse(stdin.readLineSync()!);
        print('Обмен : ${amount * 87} SOM на $amount USD');
      } else if (chooseCurrency == 2) {
        print('Сколько EUR хотите купить?');
        int amount = int.parse(stdin.readLineSync()!);
        print('Обмен : ${amount * 110} SOM на $amount EUR');
      } else if (chooseCurrency == 3) {
        print('Сколько RUB хотите купить?');
        int amount = int.parse(stdin.readLineSync()!);
        print('Обмен : ${amount * 0.9} SOM на $amount RUB');
      } else if (chooseCurrency == 4) {
        print('Сколько KZT хотите купить?');
        int amount = int.parse(stdin.readLineSync()!);
        print('Обмен : ${amount * 0.212321} SOM на $amount KZT');
      } else {
        print('Введите сторого число от 1 до 4');
        choose();
      }
    } else {
      print('Введите строго число 1 или 2!!!');
      choose();
    }
  }
}



// import 'dart:io';

// void main() {
//   Exchange exchange = Exchange();
//   exchange.toSom();
//   exchange.toAnother();
// }

// class ToSom {
//   void toSom() {}                                                         // ВАРИАНТ С ИНТЕРФЕЙСОМ(ПРАВИЛЬНО ИЛИ НЕТ?)
// }

// class ToAnother {
//   toAnother() {}
// }

// class Exchange implements ToSom, ToAnother {
//   @override
//   void toSom() {
//     print(
//         'Хотите обменять другую валюту на SOM?(1 - Да , любая другая цифра - Нет)');
//     int answer = int.parse(stdin.readLineSync()!);

//     if (answer == 1) {
//       print('Теперь выберете валюту');
//       print('USD(1)\nEUR(2)\nRUB(3)\nKZT(4)');
//       int chooseCurrency = int.parse(stdin.readLineSync()!);
//       if (chooseCurrency == 2) {
//         print('Сколько SOM хотите приобрести из EUR?');
//         int amount = int.parse(stdin.readLineSync()!);
//         print('Обмен : ${amount / 110} EUR на $amount SOM');
//       } else if (chooseCurrency == 1) {
//         print('Сколько SOM хотите приобрести из USD?');
//         int amount = int.parse(stdin.readLineSync()!);
//         print('Обмен : ${amount / 87} USD на $amount SOM');
//       } else if (chooseCurrency == 3) {
//         print('Сколько SOM хотите приобрести из RUB?');
//         int amount = int.parse(stdin.readLineSync()!);
//         print('Обмен : ${amount / 0.9} RUB на $amount SOM');
//       } else if (chooseCurrency == 4) {
//         print('Сколько SOM хотите приобрести из KZT?');
//         int amount = int.parse(stdin.readLineSync()!);
//         print('Обмен : ${amount / 0.212321} KZT на $amount SOM');
//       } else {
//         print('Введите сторого число от 1 до 4');
//         toSom();
//       }
//     } else {
//       print('Если захотите обменять валюту на SOM нажмите на цифру 1');
//     }
//   }

//   @override
//   void toAnother() {
//     print(
//         'Хотите обменять SOM на другую валюту?(1 - Да , любая другая цифра - Нет)');
//     String answer = stdin.readLineSync()!.toLowerCase();
//     if (answer == 1) {
//       print('Теперь выберете валюту');
//       print('USD(1)\nEUR(2)\nRUB(3)\nKZT(4)');
//       int chooseCurrency = int.parse(stdin.readLineSync()!);
//       if (chooseCurrency == 1) {
//         print('Сколько USD хотите купить?');
//         int amount = int.parse(stdin.readLineSync()!);
//         print('Обмен : ${amount * 87} SOM на $amount USD');
//       } else if (chooseCurrency == 2) {
//         print('Сколько EUR хотите купить?');
//         int amount = int.parse(stdin.readLineSync()!);
//         print('Обмен : ${amount * 110} SOM на $amount EUR');
//       } else if (chooseCurrency == 3) {
//         print('Сколько RUB хотите купить?');
//         int amount = int.parse(stdin.readLineSync()!);
//         print('Обмен : ${amount * 0.9} SOM на $amount RUB');
//       } else if (chooseCurrency == 4) {
//         print('Сколько KZT хотите купить?');
//         int amount = int.parse(stdin.readLineSync()!);
//         print('Обмен : ${amount * 0.212321} SOM на $amount KZT');
//       } else {
//         print('Введите сторого число от 1 до 4');
//         toAnother();
//       }
//     } else {
//       print('Если захотите обменять SOM другую валюту нажмите на цифру 1');
//     }
//   }
// }
