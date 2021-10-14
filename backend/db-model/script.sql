DROP SEQUENCE IF EXISTS "public"."champions_id_champ_seq";
DROP SEQUENCE IF EXISTS "public"."comentarios_id_comentario_seq";
DROP SEQUENCE IF EXISTS "public"."usuarios_id_usuario_seq";
DROP TABLE IF EXISTS "public"."champions";
DROP TABLE IF EXISTS "public"."comentarios";
DROP TABLE IF EXISTS "public"."usuarios";
CREATE SEQUENCE "champions_id_champ_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "comentarios_id_comentario_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "usuarios_id_usuario_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE TABLE "champions" (
  "id_champ" int4 NOT NULL DEFAULT nextval('champions_id_champ_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "title" varchar(255) COLLATE "pg_catalog"."default",
  "tag" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "champions" OWNER TO "postgres";
CREATE TABLE "comentarios" (
  "id_comentario" int4 NOT NULL DEFAULT nextval('comentarios_id_comentario_seq'::regclass),
  "id_user" int4,
  "id_champ" int4,
  "comentario" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "comentarios" OWNER TO "postgres";
CREATE TABLE "usuarios" (
  "id_usuario" int4 NOT NULL DEFAULT nextval('usuarios_id_usuario_seq'::regclass),
  "usuario" varchar(255) COLLATE "pg_catalog"."default",
  "clave" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "usuarios" OWNER TO "postgres";
BEGIN;
LOCK TABLE "public"."champions" IN SHARE MODE;
DELETE FROM "public"."champions";
INSERT INTO "public"."champions" ("id_champ","name","title","tag") VALUES (1, 'Annie', 'the Dark Child', 'mage,ranged,recommended'),(2, 'Olaf', 'the Berserker', 'fighter,melee'),(3, 'Galio', 'the Sentinels Sorrow', 'tank,support,melee'),(4, 'Twisted Fate', 'the Card Master', 'assassin,pusher,ranged'),(5, 'Xin Zhao', 'the Seneschal of Demacia', 'fighter,assassin,melee'),(6, 'Urgot', 'the Headsmans Pride', 'fighter,ranged'),(7, 'LeBlanc', 'the Deceiver', 'assassin,mage,ranged'),(8, 'Vladimir', 'the Crimson Reaper', 'fighter,mage,ranged'),(9, 'Fiddlesticks', 'the Harbinger of Doom', 'mage,jungler,ranged'),(10, 'Kayle', 'The Judicator', 'fighter,support'),(11, 'Master Yi', 'the Wuju Bladesman', 'carry,melee,recommended'),(12, 'Alistar', 'the Minotaur', 'tank,pusher,melee'),(13, 'Ryze', 'the Rogue Mage', 'mage,ranged,recommended'),(14, 'Sion', 'the Undead Champion', 'fighter,melee'),(15, 'Sivir', 'the Battle Mistress', 'carry,pusher,ranged,recommended'),(16, 'Soraka', 'the Starchild', 'support,ranged,recommended'),(17, 'Teemo', 'the Swift Scout', 'support,stealth,ranged'),(18, 'Tristana', 'the Megling Gunner', 'carry,ranged,recommended'),(19, 'Warwick', 'the Blood Hunter', 'fighter,jungler,melee,recommended'),(20, 'Nunu', 'the Yeti Rider', 'fighter,melee,jungler,recommended'),(21, 'Miss Fortune', 'the Bounty Hunter', 'ranged,carry'),(22, 'Ashe', 'the Frost Archer', 'carry,ranged,recommended'),(23, 'Tryndamere', 'the Barbarian King', 'carry,melee'),(24, 'Jax', 'Grandmaster at Arms', 'fighter,melee'),(25, 'Morgana', 'Fallen Angel', 'mage,support,ranged'),(26, 'Zilean', 'the Chronokeeper', 'mage,support,ranged'),(27, 'Singed', 'the Mad Chemist', 'fighter,melee'),(28, 'Evelynn', 'the Widowmaker', 'assassin,stealth,melee'),(29, 'Twitch', 'the Plague Rat', 'carry,stealth,ranged'),(30, 'Karthus', 'the Deathsinger', 'mage,ranged'),(31, 'ChoGath', 'the Terror of the Void', 'tank,melee'),(33, 'Rammus', 'the Armordillo', 'tank,melee,recommended'),(34, 'Anivia', 'the Cryophoenix', 'mage,ranged'),(35, 'Shaco', 'the Demon Jester', 'assassin,stealth,melee'),(36, 'Dr. Mundo', 'the Madman of Zaun', 'fighter,melee'),(37, 'Sona', 'Maven of the Strings', 'support,ranged,recommended'),(38, 'Kassadin', 'the Void Walker', 'assassin,mage,melee'),(39, 'Irelia', 'the Will of the Blades', 'assassin,melee'),(40, 'Janna', 'the Storms Fury', 'support,ranged'),(41, 'Gangplank', 'the Saltwater Scourge', 'carry,melee'),(42, 'Corki', 'the Daring Bombardier', 'ranged,carry'),(43, 'Karma', 'the Enlightened One', 'support,ranged, mage'),(44, 'Taric', 'the Gem Knight', 'tank,support,melee,recommended'),(45, 'Veigar', 'the Tiny Master of Evil', 'mage,ranged'),(48, 'Trundle', 'the Cursed Troll', 'fighter,melee'),(50, 'Swain', 'the Master Tactician', 'mage,ranged'),(51, 'Caitlyn', 'the Sheriff of Piltover', 'carry,ranged'),(53, 'Blitzcrank', 'the Great Steam Golem', 'fighter,melee'),(54, 'Malphite', 'Shard of the Monolith', 'fighter,melee'),(55, 'Katarina', 'the Sinister Blade', 'assassin,melee,recommended'),(56, 'Nocturne', 'the Eternal Nightmare', 'assassin,melee'),(57, 'Maokai', 'the Twisted Treant', 'tank,pusher,melee'),(58, 'Renekton', 'the Butcher of the Sands', 'fighter,melee'),(59, 'Jarvan IV', 'the Exemplar of Demacia', 'fighter,melee'),(60, 'Elise', 'The Spider Queen', 'mage,jungler,ranged,melee'),(61, 'Orianna', 'the Lady of Clockwork', 'mage,ranged'),(62, 'Wukong', 'the Monkey King', 'fighter,melee,stealth'),(63, 'Brand', 'the Burning Vengeance', 'mage,ranged'),(64, 'Lee Sin', 'the Blind Monk', 'assassin,melee'),(67, 'Vayne', 'the Night Hunter', 'carry,ranged,assassin,stealth'),(68, 'Rumble', 'the Mechanized Menace', 'mage, melee, pusher'),(69, 'Cassiopeia', 'the Serpents Embrace', 'mage,ranged'),(72, 'Skarner', 'the Crystal Vanguard', 'fighter,jungler,melee'),(74, 'Heimerdinger', 'the Revered Inventor', 'mage,pusher,ranged'),(75, 'Nasus', 'the Curator of the Sands', 'fighter,pusher,melee,recommended'),(76, 'Nidalee', 'the Bestial Huntress', 'support,pusher'),(77, 'Udyr', 'the Animal Spirit', 'fighter,melee,jungler'),(78, 'Poppy', 'the Iron Ambassador', 'fighter,assassin,melee'),(79, 'Gragas', 'the Rabble Rouser', 'fighter,melee'),(80, 'Pantheon', 'the Artisan of War', 'assassin,melee'),(81, 'Ezreal', 'the Prodigal Explorer', 'carry,ranged'),(82, 'Mordekaiser', 'the Master of Metal', 'fighter,pusher,melee'),(83, 'Yorick', 'the Gravedigger', 'fighter,pusher,melee'),(84, 'Akali', 'the Fist of Shadow', 'assassin,melee,stealth'),(85, 'Kennen', 'the Heart of the Tempest', 'mage,ranged'),(86, 'Garen', 'The Might of Demacia', 'fighter,melee,recommended'),(89, 'Leona', 'the Radiant Dawn', 'tank,melee'),(90, 'Malzahar', 'the Prophet of the Void', 'mage,ranged'),(91, 'Talon', 'the Blades Shadow', 'assassin,melee'),(92, 'Riven', 'the Exile', 'fighter,melee'),(96, 'KogMaw', 'the Mouth of the Abyss', 'ranged,carry'),(98, 'Shen', 'Eye of Twilight', 'tank,support,melee'),(99, 'Lux', 'the Lady of Luminosity', 'mage,support,ranged'),(101, 'Xerath', 'the Magus Ascendant', 'mage,ranged'),(102, 'Shyvana', 'the Half-Dragon', 'fighter,melee'),(103, 'Ahri', 'the Nine-Tailed Fox', 'assassin,mage,ranged'),(104, 'Graves', 'the Outlaw', 'carry,ranged'),(105, 'Fizz', 'the Tidal Trickster', 'fighter,assassin,melee'),(106, 'Volibear', 'the Thunders Roar', 'tank,fighter,jungler,melee'),(107, 'Rengar', 'the Pridestalker', 'fighter,jungler,melee,stealth'),(110, 'Varus', 'the Arrow of Retribution', 'carry,ranged'),(111, 'Nautilus', 'the Titan of the Depths', 'tank,melee'),(112, 'Viktor', 'the Machine Herald', 'mage,ranged,pusher'),(113, 'Sejuani', 'the Winters Wrath', 'tank,jungler,melee'),(114, 'Fiora', 'the Grand Duelist', 'carry,melee'),(115, 'Ziggs', 'the Hexplosives Expert', 'mage,ranged,pusher'),(117, 'Lulu', 'the Fae Sorceress', 'support,ranged'),(119, 'Draven', 'the Glorious Executioner', 'carry,ranged'),(120, 'Hecarim', 'the Shadow of War', 'fighter,jungler,melee'),(121, 'KhaZix', 'the Voidreaver', 'assassin,melee,jungler,stealth'),(122, 'Darius', 'the Hand of Noxus', 'fighter,melee'),(126, 'Jayce', 'the Defender of Tomorrow', 'fighter,melee,ranged'),(131, 'Diana', 'Scorn of the Moon', 'fighter,jungler,melee,mage'),(133, 'Quinn', 'Demacias Wings', 'carry,ranged'),(134, 'Syndra', 'the Dark Sovereign', 'mage,ranged'),(143, 'Zyra', 'Rise of the Thorns', 'mage,pusher, ranged'),(154, 'Zac', 'the Secret Weapon', 'fighter,melee'),(238, 'Zed', 'the Master of Shadows', 'assassin,melee'),(254, 'Vi', 'the Piltover Enforcer', 'fighter,melee'),(267, 'Nami', 'the Tidecaller', 'support,ranged'),(412, 'Thresh', 'the Chain Warden', 'tank,ranged,support');
COMMIT;
BEGIN;
LOCK TABLE "public"."comentarios" IN SHARE MODE;
DELETE FROM "public"."comentarios";
INSERT INTO "public"."comentarios" ("id_comentario","id_user","id_champ","comentario") VALUES (6, 1, 1, 'poder'),(2, 1, 1, 'nooooooooooo'),(8, 1, 1, 'siiiiiiiiiiiiiiiiii'),(10, 1, 2, 'poder'),(11, 1, 2, 'yiuuuuuuuuju');
COMMIT;
BEGIN;
LOCK TABLE "public"."usuarios" IN SHARE MODE;
DELETE FROM "public"."usuarios";
INSERT INTO "public"."usuarios" ("id_usuario","usuario","clave") VALUES (1, 'a', 'a');
COMMIT;
ALTER TABLE "champions" ADD CONSTRAINT "champions_pkey" PRIMARY KEY ("id_champ");
ALTER TABLE "comentarios" ADD CONSTRAINT "comentarios_pkey" PRIMARY KEY ("id_comentario");
ALTER TABLE "usuarios" ADD CONSTRAINT "usuarios_pkey" PRIMARY KEY ("id_usuario");
ALTER TABLE "comentarios" ADD CONSTRAINT "fk_commit_champ" FOREIGN KEY ("id_champ") REFERENCES "public"."champions" ("id_champ") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "comentarios" ADD CONSTRAINT "fk_commit_user" FOREIGN KEY ("id_user") REFERENCES "public"."usuarios" ("id_usuario") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER SEQUENCE "champions_id_champ_seq"
OWNED BY "champions"."id_champ";
SELECT setval('"champions_id_champ_seq"', 2, false);
ALTER SEQUENCE "champions_id_champ_seq" OWNER TO "postgres";
ALTER SEQUENCE "comentarios_id_comentario_seq"
OWNED BY "comentarios"."id_comentario";
SELECT setval('"comentarios_id_comentario_seq"', 12, true);
ALTER SEQUENCE "comentarios_id_comentario_seq" OWNER TO "postgres";
ALTER SEQUENCE "usuarios_id_usuario_seq"
OWNED BY "usuarios"."id_usuario";
SELECT setval('"usuarios_id_usuario_seq"', 2, true);
ALTER SEQUENCE "usuarios_id_usuario_seq" OWNER TO "postgres";