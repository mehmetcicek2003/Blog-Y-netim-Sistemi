-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2024 at 05:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 'Dinamik web siteleri oluşturmak için yaygın olarak kullanılan bir sunucu tarafı dilidir.\n\n', '2024-12-22 16:25:42', '2024-12-22 16:14:22'),
(2, 'Javascript', 'Web sayfalarını etkileşimli hale getiren ve tarayıcıda çalışan bir programlama dilidir.\n\n', '2024-12-22 16:25:42', '2024-12-22 16:14:24'),
(3, 'Python', 'Veri analizi, yapay zeka ve web geliştirme gibi birçok alanda kullanılan yüksek seviyeli bir dildir.\n\n', '2024-12-22 16:25:42', '2024-12-22 16:14:26'),
(4, 'CodeIgniter', 'PHP tabanlı, hızlı ve hafif bir MVC (Model-View-Controller) framework\'üdür.\n\n', '2024-12-22 16:25:42', '2024-12-22 16:14:27'),
(5, 'Laravel', 'Modern ve güçlü bir PHP framework\'ü olup, web uygulamaları geliştirmeyi kolaylaştırır.\n\n\n\n', '2024-12-22 16:25:42', '2024-12-22 16:14:29'),
(7, 'MongoDB', 'MongoDB, esnek ve ölçeklenebilir bir NoSQL veritabanı sistemidir, doküman tabanlı yapısı sayesinde yapılandırılmamış verilerle çalışmaya olanak tanır.', '2024-12-22 18:43:53', '2024-12-22 18:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-12-24-005419', 'App\\Database\\Migrations\\Authentication', 'default', 'App', 1656293096, 1),
(2, '2024-12-24-005656', 'App\\Database\\Migrations\\Department', 'default', 'App', 1656293096, 1),
(3, '2024-12-24-005343', 'App\\Database\\Migrations\\Posts', 'default', 'App', 1656293096, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(30) UNSIGNED NOT NULL,
  `category_id` int(30) UNSIGNED NOT NULL,
  `user_id` int(30) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `short_description` text NOT NULL,
  `content` text NOT NULL,
  `banner` text NOT NULL,
  `tags` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `short_description`, `content`, `banner`, `tags`, `status`, `created_at`, `updated_at`) VALUES
(24, 7, 1, 'MongoDB: Modern Veritabanı Çözümü', 'MongoDB, NoSQL veritabanları arasında popüler bir tercih olarak esnek veri modelleme, yatay ölçeklenebilirlik ve yüksek performans sunar.', '&lt;p&gt;MongoDB, doküman tabanlı bir veritabanı sistemidir ve esnekliğiyle öne çıkar. Geleneksel tablolara dayalı SQL veritabanlarının aksine, MongoDB, JSON benzeri doküman yapısını kullanır. Bu, özellikle değişken veri yapılarıyla çalışırken avantaj sağlar.&lt;br&gt;MongoDB’nin avantajları:&lt;/p&gt;&lt;ol&gt;&lt;li&gt;&lt;strong&gt;Esnek Veri Modelleme:&lt;/strong&gt; Sabit bir şema gerekmez.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Kolay Entegrasyon:&lt;/strong&gt; JSON formatı sayesinde modern uygulamalarla uyumlu.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Yatay Ölçeklenebilirlik:&lt;/strong&gt; Büyük verilerle başa çıkmak için tasarlanmıştır.&lt;br&gt;MongoDB ile hızlı başlangıç için &lt;code&gt;PyMongo&lt;/code&gt; veya &lt;code&gt;Mongoose&lt;/code&gt; gibi kütüphaneler kullanılabilir. Özellikle büyük ölçekli projelerde, MongoDB’nin veri replikasyonu ve dağıtık yapısı oldukça faydalıdır.&lt;/li&gt;&lt;/ol&gt;', 'http://localhost/omer/public/uploads/1_MongoDB_Logo.jpg', '#MongoDB #NoSQL #Veritabanı #Yazılım #VeriModelleme', 1, '2024-12-22 18:47:10', '2024-12-22 21:13:26'),
(25, 3, 1, 'Python: Modern Programlamanın Gücü', 'Python, açık kaynaklı, yüksek seviyeli ve çok yönlü bir programlama dilidir. Kolay öğrenilebilirliği sayesinde hem başlangıç seviyesindeki hem de uzman geliştiriciler için ideal bir tercihtir.\\\\r\\\\n', '&lt;p&gt;Python, geliştiricilerin hızlı prototipleme yapmasına ve karmaşık uygulamalar oluşturmasına olanak tanır. &lt;code&gt;Django&lt;/code&gt;, &lt;code&gt;Flask&lt;/code&gt; gibi web geliştirme kütüphaneleri, &lt;code&gt;NumPy&lt;/code&gt; ve &lt;code&gt;Pandas&lt;/code&gt; gibi veri analizi araçları Python\\\\\\&#039;un gücünü daha da artırır.&lt;br&gt;&lt;strong&gt;Python’un Avantajları:&lt;/strong&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;&lt;strong&gt;Basit ve Okunabilir Söz Dizimi:&lt;/strong&gt; Yeni başlayanlar için harika bir başlangıç.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Zengin Kütüphane Desteği:&lt;/strong&gt; Veri analitiğinden yapay zekaya kadar geniş bir ekosistem.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Platform Bağımsızlığı:&lt;/strong&gt; Her işletim sisteminde çalışabilir.&lt;br&gt;Python’u öğrenmek için önce temel veri tipleri ve döngüler üzerinde çalışın. Ardından projeler geliştirmeye başlayarak dilin yapısını kavrayabilirsiniz.&lt;/li&gt;&lt;/ol&gt;', 'http://localhost/omer/public/uploads/1_2022-07-19-Melhores-cursos-de-Python.jpg', '#Python #Programlama #Kodlama #YapayZeka #VeriBilimi\\\\r\\\\n', 1, '2024-12-22 18:48:36', '2024-12-22 21:13:47'),
(26, 1, 1, 'PHP: Dinamik Web Geliştirmenin Temelleri', 'PHP, web geliştirme dünyasında en yaygın kullanılan dillerden biridir. Dinamik içerik üretimi ve sunucu tarafı programlama için ideal bir seçenektir.\\\\r\\\\n\\\\r\\\\n', '&lt;p&gt;PHP, 1995 yılında geliştirilmiş ve yıllar içinde birçok büyük web uygulamasının temelini oluşturmuştur. &lt;code&gt;WordPress&lt;/code&gt;, &lt;code&gt;Drupal&lt;/code&gt; gibi içerik yönetim sistemlerinin arkasındaki güç PHP’dir.&lt;br&gt;&lt;strong&gt;PHP\\\\\\&#039;nin Güçlü Yönleri:&lt;/strong&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;&lt;strong&gt;Kolay Kullanım:&lt;/strong&gt; Yeni başlayanlar için hızlı öğrenme imkanı sunar.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Geniş Topluluk Desteği:&lt;/strong&gt; Çok sayıda kaynak ve eklenti mevcuttur.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Veritabanı Entegrasyonu:&lt;/strong&gt; MySQL, PostgreSQL gibi veritabanlarıyla mükemmel uyum.&lt;br&gt;PHP ile dinamik bir web sitesi yapmak için &lt;code&gt;HTML&lt;/code&gt; ve &lt;code&gt;CSS&lt;/code&gt; ile temel bilgilerinizi birleştirerek başlayabilirsiniz. Modern projelerde &lt;code&gt;Laravel&lt;/code&gt; gibi frameworkler PHP’nin yeteneklerini daha da ileri taşır.&lt;/li&gt;&lt;/ol&gt;', 'http://localhost/omer/public/uploads/1_php-internet-programciligi.webp', '#PHP #WebGeliştirme #Backend #Dinamikİçerik\\\\r\\\\n\\\\r\\\\n', 1, '2024-12-22 18:49:43', '2024-12-22 21:13:59'),
(27, 4, 1, 'CodeIgniter 4: Hafif ve Güçlü Bir Framework', 'CodeIgniter 4, PHP tabanlı, hafif ve hızlı bir web uygulama geliştirme çatısıdır. Modern uygulamalar için yüksek performans sağlar.', '&lt;p&gt;CodeIgniter 4, geliştiricilere basit bir yapı sunarak hızlı web uygulamaları geliştirmelerine yardımcı olur. &lt;code&gt;MVC&lt;/code&gt; (Model-View-Controller) yapısı sayesinde kod düzeni korunur ve bakımı kolaylaşır.&lt;br&gt;&lt;strong&gt;Öne Çıkan Özellikler:&lt;/strong&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;&lt;strong&gt;Hafif ve Hızlı:&lt;/strong&gt; Performans odaklıdır.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Basit Yapılandırma:&lt;/strong&gt; Hızlı kurulum ve kolay yapılandırma.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Güvenlik Araçları:&lt;/strong&gt; CSRF ve XSS koruması gibi yerleşik özellikler.&lt;br&gt;CodeIgniter 4 ile projeye başlamak için Composer kullanarak çatıyı yükleyebilirsiniz. &lt;code&gt;routes.php&lt;/code&gt; ve &lt;code&gt;controllers&lt;/code&gt; üzerinde çalışarak ilk sayfanızı hızlıca oluşturabilirsiniz.&lt;/li&gt;&lt;/ol&gt;', 'http://localhost/omer/public/uploads/1_Belajar-CodeIgniter-4-Lengkap.png', '#CodeIgniter #PHPFramework #WebUygulamaları #HızlıGeliştirme', 1, '2024-12-22 18:51:26', '2024-12-22 21:14:10'),
(28, 2, 1, 'JavaScript: Web Geliştiricilerin En Güçlü Aracı', 'JavaScript, web sitelerini interaktif hale getiren ve modern web geliştirme dünyasının temel taşlarından biri olan programlama dilidir. Bu blogda JavaScript\\\\\\\\\\\\\\&#039;in temel özelliklerini ve neden vazgeçilmez olduğunu inceleyeceğiz.', '&lt;p&gt;JavaScript, web tarayıcılarında çalışan ve kullanıcı deneyimini geliştiren bir programlama dilidir. HTML ve CSS ile birlikte, web geliştirme üçlüsünün önemli bir parçasını oluşturur. İşte JavaScript’in gücünü anlamanıza yardımcı olacak bazı temel yönler:&lt;/p&gt;&lt;h4&gt;1. &lt;strong&gt;Neden JavaScript?&lt;/strong&gt;&lt;/h4&gt;&lt;p&gt;JavaScript, web sitelerine interaktivite katmanın en yaygın ve kolay yoludur.&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Düğmelere tıklandığında gerçekleşen olaylar.&lt;/li&gt;&lt;li&gt;Form doğrulamaları.&lt;/li&gt;&lt;li&gt;Animasyonlar ve medya oynatıcılar.&lt;/li&gt;&lt;/ul&gt;&lt;h4&gt;2. &lt;strong&gt;Temel Özellikleri&lt;/strong&gt;&lt;/h4&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Dinamik ve Zayıf Türde&lt;/strong&gt;: Veriler, herhangi bir türde olabilir ve bu esneklik geliştiricilere kolaylık sağlar.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Platform Bağımsız&lt;/strong&gt;: Tüm modern tarayıcılarla uyumludur.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Geniş Ekosistem&lt;/strong&gt;: JavaScript kütüphaneleri (React, Angular, Vue) ve Node.js gibi araçlarla daha güçlüdür.&lt;/li&gt;&lt;/ul&gt;&lt;h4&gt;3. &lt;strong&gt;Kullanım Alanları&lt;/strong&gt;&lt;/h4&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Front-End Geliştirme&lt;/strong&gt;: React veya Vue gibi kütüphanelerle görsel ve interaktif kullanıcı arayüzleri oluşturabilirsiniz.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Back-End Geliştirme&lt;/strong&gt;: Node.js ile sunucu tarafında güçlü uygulamalar geliştirebilirsiniz.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Mobil Uygulamalar&lt;/strong&gt;: React Native gibi araçlarla mobil uygulama geliştirebilirsiniz&lt;br&gt;&lt;h4&gt;4. &lt;strong&gt;Örnek Kod&lt;/strong&gt;&lt;/h4&gt;&lt;p&gt;Basit bir \\\\\\\\\\\\\\&quot;Merhaba, Dünya!\\\\\\\\\\\\\\&quot; örneği:&lt;/p&gt;&lt;pre class=\\\\\\\\\\\\\\&quot;!overflow-visible\\\\\\\\\\\\\\&quot;&gt;&lt;div class=\\\\\\\\\\\\\\&quot;contain-inline-size rounded-md border-[0.5px] border-token-border-medium relative bg-token-sidebar-surface-primary dark:bg-gray-950\\\\\\\\\\\\\\&quot; bis_skin_checked=\\\\\\\\\\\\\\&quot;1\\\\\\\\\\\\\\&quot;&gt;&lt;div class=\\\\\\\\\\\\\\&quot;overflow-y-auto p-4\\\\\\\\\\\\\\&quot; dir=\\\\\\\\\\\\\\&quot;ltr\\\\\\\\\\\\\\&quot; bis_skin_checked=\\\\\\\\\\\\\\&quot;1\\\\\\\\\\\\\\&quot;&gt;&lt;code class=\\\\\\\\\\\\\\&quot;!whitespace-pre hljs language-javascript\\\\\\\\\\\\\\&quot;&gt;&lt;span class=\\\\\\\\\\\\\\&quot;hljs-variable language_\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;document&lt;/span&gt;.&lt;span class=\\\\\\\\\\\\\\&quot;hljs-title function_\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;addEventListener&lt;/span&gt;(&lt;span class=\\\\\\\\\\\\\\&quot;hljs-string\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;\\\\\\\\\\\\\\&#039;DOMContentLoaded\\\\\\\\\\\\\\&#039;&lt;/span&gt;, &lt;span class=\\\\\\\\\\\\\\&quot;hljs-function\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;() =&amp;gt;&lt;/span&gt; {\\\\\\\\r\\\\\\\\n    &lt;span class=\\\\\\\\\\\\\\&quot;hljs-keyword\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;const&lt;/span&gt; button = &lt;span class=\\\\\\\\\\\\\\&quot;hljs-variable language_\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;document&lt;/span&gt;.&lt;span class=\\\\\\\\\\\\\\&quot;hljs-title function_\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;querySelector&lt;/span&gt;(&lt;span class=\\\\\\\\\\\\\\&quot;hljs-string\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;\\\\\\\\\\\\\\&#039;button\\\\\\\\\\\\\\&#039;&lt;/span&gt;);\\\\\\\\r\\\\\\\\n    button.&lt;span class=\\\\\\\\\\\\\\&quot;hljs-title function_\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;addEventListener&lt;/span&gt;(&lt;span class=\\\\\\\\\\\\\\&quot;hljs-string\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;\\\\\\\\\\\\\\&#039;click\\\\\\\\\\\\\\&#039;&lt;/span&gt;, &lt;span class=\\\\\\\\\\\\\\&quot;hljs-function\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;() =&amp;gt;&lt;/span&gt; {\\\\\\\\r\\\\\\\\n        &lt;span class=\\\\\\\\\\\\\\&quot;hljs-title function_\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;alert&lt;/span&gt;(&lt;span class=\\\\\\\\\\\\\\&quot;hljs-string\\\\\\\\\\\\\\&quot; style=\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\&quot;&gt;\\\\\\\\\\\\\\&#039;Merhaba, Dünya!\\\\\\\\\\\\\\&#039;&lt;/span&gt;);\\\\\\\\r\\\\\\\\n    });\\\\\\\\r\\\\\\\\n});\\\\\\\\r\\\\\\\\n&lt;/code&gt;&lt;/div&gt;&lt;/div&gt;&lt;/pre&gt;&lt;h4&gt;5. &lt;strong&gt;JavaScript’te Gelecek&lt;/strong&gt;&lt;/h4&gt;&lt;p&gt;JavaScript, ECMAScript güncellemeleriyle sürekli gelişiyor. Daha iyi özellikler ve performans artışı için ES6+ standartlarını öğrenmek önemlidir.&lt;/p&gt;&lt;h4&gt;Sonuç&lt;/h4&gt;&lt;p&gt;JavaScript, web geliştirme dünyasında vazgeçilmezdir. Eğer modern bir geliştirici olmak istiyorsanız, bu dili öğrenmek ve pratik yapmak kaçınılmazdır.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;', 'http://localhost/omer/public/uploads/1_scn-javascript-01.svg', 'JavaScript, Web Geliştirme, Programlama, Front-End, Back-End, Node.js', 1, '2024-12-22 20:01:21', '2024-12-22 21:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(2) NOT NULL DEFAULT 3,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$bRdBxzJdxivTIxvbk4YYOOSgNvvSRzDf/IjAJSasXHjuh47n1xafS', 1, '2024-12-22 16:25:42', '2024-12-22 16:16:39'),
(2, 'omer', 'omer@gmail.com', '$2y$10$g8EWSknh89NAmDZCO4ekOOPfitjw/muux.U3RSJGtPR5pFFVcAzvm', 2, '2024-12-22 16:25:42', '2024-12-22 21:15:23'),
(3, 'omer iki', 'omer@hotmail.com', '$2y$10$5g9O93DYADqAcHyYwjO/F.lpLX2MaGmPmpdKiYhlsrA.pG5Xt4Ijy', 2, '2024-12-22 16:17:26', '2024-12-22 16:17:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
