--Trello API Test Otomasyon Projesi--



##Bu proje, Trello'nun API'si için Karate framework'ünü kullanarak test otomasyonu sağlayan bir test otomasyon paketidir. 
##Proje, Trello panoları ve kartlarının oluşturulması, güncellenmesi ve yönetilmesi için testler içerir.


**'create_board.feature': Yeni bir Trello panosu oluşturmak için testler.
**'create_card.feature': Bir Trello panosu içinde yeni bir kart oluşturmak için testler.
**'create_list.feature': Bir Trello panosu içinde yeni bir liste oluşturmak için testler.
**'update_card.feature': Bir Trello panosu içinde bir kartı güncellemek için testler.



### Trello API Key ve Token Ayarları

Bu projeyi çalıştırabilmek için Trello üzerinden bir API anahtarı ve Token almanız gerekmektedir. Aşağıdaki adımları izleyerek gerekli ayarları yapabilirsiniz:

1. **API Anahtarı ve Token Alın**:
   - Trello API anahtarınızı ve Token'ınızı almak için [Trello Developer Portal](https://trello.com/app-key) adresine gidin.
   - API anahtarınızı ve Token'ınızı kaydedin.

2. **Kod İçerisinde Gerekli Düzenlemeleri Yapın**:
   - Projedeki `src/test/resources/trello` dizininde yer alan `.feature` dosyalarında `ApiKey` ve `TOKEN` yerlerine sırasıyla kendi Trello API anahtarınızı ve Token'ınızı ekleyin.

3. **Projeyi Çalıştırın**:
   - Tüm gerekli ayarlamaları yaptıktan sonra, projeyi çalıştırabilirsiniz. Bunun için:
     ```bash
     mvn test
     ```
   - Alternatif olarak, `TrelloApiTest.java` dosyasını doğrudan IDE'niz üzerinden çalıştırabilirsiniz.
