Blog Websitesi

Mehmet Yiğit Çiçek 2323221024

Furkan Karasu 2323221038

Ömer Vanlıoğlu 2323221052

-

Proje Dosyaları ve Maddeler Hakkına Bilgilendirme:

-
app klasörü 

.htaccess: Sunucu yapılandırma dosyası.

Common.php: Ortak fonksiyonları içeren bir PHP dosyası.

Config: Yapılandırma ayarlarını içeren bir klasör.

Controllers: Kontrolör dosyalarını içeren bir klasör.

Database: Veritabanı işlemleriyle ilgili dosyalar içeren bir klasör.

Filters: Filtre dosyaları klasörü.

Helpers: Yardımcı fonksiyon dosyaları klasörü.

Language: Dil dosyaları klasörü.

Models: Model dosyalarını içeren bir klasör.

Views: Görünüm dosyalarını içeren bir klasör.

-
Controllers klasörü

Auth.php: kullanıcı doğrulama işlemleri için.

BaseController.php: Tüm kontrolörler için temel bir sınıf.

Blog.php: Blog ile ilgili işlemleri yöneten bir kontrolör.

Home.php: Ana sayfa kontrolörü.

Main.php: Genel uygulama işlevlerini yöneten bir kontrolör.

-
Models klasörü

Auth.php: Kullanıcı kimlik doğrulama modeli. - Kullanıcı doğrulama ve şifre işlemleri için kullanılıyor.

Categories.php: Kategoriler için bir model.

Posts.php: Gönderiler için bir model. - Blog gönderileri üzerinde CRUD işlemleri için yapılandırılmış.


-
SQL:

categories: blog kategorilerini tutuyor.

migrations: Veritabanı geçişlerini yönetmek için.

posts: Blog gönderilerini saklamak için.

users: Kullanıcı bilgilerini ve kimlik doğrulama için.

-


users tablosu:

    Kullanıcılar için şifre sütunu password olarak tanımlanmış ve text türünde saklanıyor.
    Ek sütunlar: name, email, type, created_at, updated_at.

posts tablosu:

    Blog gönderileri için gerekli sütunlar: category_id, user_id, title, short_description, content, banner, tags, status.
    İçerikler yönetim paneli üzerinden oluşturulacak şekilde tasarlandı

Auth.php (Controller):

    Kullanıcı giriş işlemleri ve kimlik doğrulama için bir model (Auth_Model) kullanılıyor.
    session kullanımıyla kullanıcı oturumu yönetiliyor.

Blog.php (Controller):

    Blog gönderileriyle ilgili işlemleri yönetmek için Posts, Categories, ve Auth modelleri kullanılıyor.
    db_connect kullanılarak veritabanına bağlanılıyor ve session ile oturum yönetimi sağlanıyor.
    
-

Kullanıcı girişi ve güvenli oturum yönetimi (Madde 2 ve Madde 8).

Veritabanı tabloları üzerinde CRUD işlemleri için model yapısı (Madde 6).

Blog gönderilerinin yönetimi ve web sitesinde gösterimi (Madde 3 ve Madde 4).

-

Yönetim Paneli ve Web Sitesi (Madde 1): Yönetim paneli için kontrolörler ve modeller mevcut. Örneğin Blog gönderilerini yöneten bir sistem var.

Veritabanı Kullanımı ve Güvenli Şifre Saklama (Madde 2): Veritabanı tablolarında kullanıcı şifreleri saklanıyor ve hashlenerek saklannıyor.

Veritabanı Tabloları ve İçerik Yönetimi (Madde 3): users, posts, categories tabloları, içerik ekleme/düzenleme/silme işlemleri için yapılandırılmış.

Web Sitesinde İçerik Gösterimi (Madde 4): Blog gönderilerinin görüntülendiği bir yapı mevcut.

baseURL ve Ortam Türü (Madde 5): app.php dosyasında mevcut.

CRUD ve Manuel Model Yapısı (Madde 6): Posts ve Categories modelleri CRUD yapısını kullanıyor.

Oturum Yönetimi (Madde 8): Kullanıcı oturumları session(çerez) üzerinden yönetiliyor.

Fonksiyon Kullanımı (Madde 9): base_url: Projede birçok yerde kullanılmış özellikle görünüm dosyalarında ör. auth/login.php, pages/posts/add.php

Rota Kuralları (Madde 10): get ve post: Çeşitli dosyalarda kullanılmış. Örneğin Auth.php ve Blog.php kontrolörlerinde.
match: Kullanımı Routes.php ve Auth.php gibi dosyalarda bulunuyor.
