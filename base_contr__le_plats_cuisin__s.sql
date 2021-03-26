-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 26 mars 2021 à 15:50
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `base_contrôle_plats_cuisinés`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `id_ingredient` int(10) UNSIGNED NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ingredients`
--

INSERT INTO `ingredients` (`id_ingredient`, `libelle`) VALUES
(1, 'Choux'),
(2, 'semoule');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_22_145556_create_sessions_table', 1),
(7, '2021_03_22_154511_create_ingredients_table', 1),
(8, '2021_03_22_154909_create_origines_table', 1),
(9, '2021_03_22_155218_create_paniers_table', 1),
(10, '2021_03_22_155410_create_plats_table', 1),
(11, '2021_03_22_160248_create_type_nourritures_table', 1),
(12, '2021_03_22_160337_create_type_plats_table', 1),
(13, '2021_03_24_083844_create_plat_ingredients_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `origines`
--

CREATE TABLE `origines` (
  `id_origine` int(10) UNSIGNED NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `origines`
--

INSERT INTO `origines` (`id_origine`, `libelle`) VALUES
(1, 'Francais'),
(2, 'Italien');

-- --------------------------------------------------------

--
-- Structure de la table `paniers`
--

CREATE TABLE `paniers` (
  `id_personne` int(10) UNSIGNED NOT NULL,
  `id_plat` int(10) UNSIGNED NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `plats`
--

CREATE TABLE `plats` (
  `id_plat` int(10) UNSIGNED NOT NULL,
  `prix` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_origine` int(10) UNSIGNED NOT NULL,
  `poids` int(11) NOT NULL,
  `id_type_plat` int(10) UNSIGNED NOT NULL,
  `id_type_nourriture` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plats`
--

INSERT INTO `plats` (`id_plat`, `prix`, `libelle`, `id_origine`, `poids`, `id_type_plat`, `id_type_nourriture`) VALUES
(2, 15, 'Choucroute a la semoule', 1, 700, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `plat_ingredients`
--

CREATE TABLE `plat_ingredients` (
  `id_ingredient` int(10) UNSIGNED NOT NULL,
  `id_plat` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plat_ingredients`
--

INSERT INTO `plat_ingredients` (`id_ingredient`, `id_plat`) VALUES
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('T9MmiH8OtGZo2gFuWUEWTKdmZcV4sOpjT5Agnyl8', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiaGhqem56emVtcncwSmNCSk1ZRUNwNW5GTmx4cWVZWmxZZGk2QzNMeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU0OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcmVjaGVyY2hlSW5ncmVkaWVudD9pbmdyZWRpZW50PTEiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkV0xvamQ1aXY0MmFRbWpLSzA2dlREdTJ6YktFNHN5NHdLQkY1V04wSUtYc1kzZ1RLM2NXV0MiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFdMb2pkNWl2NDJhUW1qS0swNnZURHUyemJLRTRzeTR3S0JGNVdOMElLWHNZM2dUSzNjV1dDIjt9', 1616770186);

-- --------------------------------------------------------

--
-- Structure de la table `type_nourritures`
--

CREATE TABLE `type_nourritures` (
  `id_type_nourriture` int(10) UNSIGNED NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_nourritures`
--

INSERT INTO `type_nourritures` (`id_type_nourriture`, `libelle`) VALUES
(1, 'Carnivore'),
(2, 'Vegan');

-- --------------------------------------------------------

--
-- Structure de la table `type_plats`
--

CREATE TABLE `type_plats` (
  `id_type_plat` int(10) UNSIGNED NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_plats`
--

INSERT INTO `type_plats` (`id_type_plat`, `libelle`) VALUES
(1, 'Entree'),
(2, 'Plat'),
(3, 'Dessert');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'florian', 'florian@a.com', NULL, '$2y$10$WLojd5iv42aQmjKK06vTDu2zbKE4sy4wKBF5WN0IKXsY3gTK3cWWC', NULL, NULL, '1num8tJq0zqM2yv0QnQXbL6juSKmjF75fHBqGMtNID0kAEkN6khKwxCjaNiR', NULL, NULL, '2021-03-24 07:59:48', '2021-03-24 07:59:48');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id_ingredient`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `origines`
--
ALTER TABLE `origines`
  ADD PRIMARY KEY (`id_origine`);

--
-- Index pour la table `paniers`
--
ALTER TABLE `paniers`
  ADD KEY `paniers_id_plat_foreign` (`id_plat`),
  ADD KEY `paniers_id_personne_foreign` (`id_personne`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `plats`
--
ALTER TABLE `plats`
  ADD PRIMARY KEY (`id_plat`),
  ADD KEY `plats_id_origine_foreign` (`id_origine`),
  ADD KEY `plats_id_type_plat_foreign` (`id_type_plat`),
  ADD KEY `plats_id_type_nourriture_foreign` (`id_type_nourriture`);

--
-- Index pour la table `plat_ingredients`
--
ALTER TABLE `plat_ingredients`
  ADD PRIMARY KEY (`id_ingredient`,`id_plat`),
  ADD KEY `plat_ingredients_id_plat_foreign` (`id_plat`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `type_nourritures`
--
ALTER TABLE `type_nourritures`
  ADD PRIMARY KEY (`id_type_nourriture`);

--
-- Index pour la table `type_plats`
--
ALTER TABLE `type_plats`
  ADD PRIMARY KEY (`id_type_plat`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id_ingredient` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `origines`
--
ALTER TABLE `origines`
  MODIFY `id_origine` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `plats`
--
ALTER TABLE `plats`
  MODIFY `id_plat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `type_nourritures`
--
ALTER TABLE `type_nourritures`
  MODIFY `id_type_nourriture` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `type_plats`
--
ALTER TABLE `type_plats`
  MODIFY `id_type_plat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `paniers`
--
ALTER TABLE `paniers`
  ADD CONSTRAINT `paniers_id_personne_foreign` FOREIGN KEY (`id_personne`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `paniers_id_plat_foreign` FOREIGN KEY (`id_plat`) REFERENCES `plats` (`id_plat`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `plats`
--
ALTER TABLE `plats`
  ADD CONSTRAINT `plats_id_origine_foreign` FOREIGN KEY (`id_origine`) REFERENCES `origines` (`id_origine`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `plats_id_type_nourriture_foreign` FOREIGN KEY (`id_type_nourriture`) REFERENCES `type_nourritures` (`id_type_nourriture`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `plats_id_type_plat_foreign` FOREIGN KEY (`id_type_plat`) REFERENCES `type_plats` (`id_type_plat`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `plat_ingredients`
--
ALTER TABLE `plat_ingredients`
  ADD CONSTRAINT `plat_ingredients_id_ingredient_foreign` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredients` (`id_ingredient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `plat_ingredients_id_plat_foreign` FOREIGN KEY (`id_plat`) REFERENCES `plats` (`id_plat`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
