-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 03, 2025 at 11:11 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bleaugue`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `image` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_id` (`category_id`) USING BTREE,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `content`, `image`, `created_at`, `user_id`) VALUES
(1, 1, 'George R.R. Martin nous tease un potentiel film Elden Ring', 'Ah ouais on est chaud avec Audrey Fleurot dans le rôle de Malenia et Pierre Niney dans la peau du Général Radahn.\n\nAlors qu’on attend avec impatience la sortie du jeu Elden Ring Nightreign, voilà qu’on découvre les prémices d’un nouveau projet concernant l’Entre-Terre. Dans une interview pour IGN, George R. R. Martin, l’auteur de Game of Thrones et consultant sur le scénario du jeu Elden Ring, s’est exprimé à ce propos : “Eh bien, je ne peux pas en dire trop à ce sujet, mais il y a des discussions sur l’idée de faire un film Elden Ring.” Déjà en 2024, Hidetaka Miyazaki, le boss de FromSoftware, se disait lui aussi intéressé par l’adaptation du jeu en film. Comme les deux créateurs de Elden Ring sont chauds pour ce projet, il se pourrait donc que ça se fasse vraiment. Reste à savoir quelle histoire de ce vaste univers adapter.\n\nVous aussi ça vous chaufferait un film Elden Ring ? Vous aussi vous verriez Audrey Fleurot dans le rôle de Malenia ?', 'https://cdn-www.konbini.com/files/2023/03/Feat-Elden-Ring.jpg?width=1200&quality=75&format=webp', '2025-02-25 11:36:44', 1),
(2, 1, 'Rocket League : La Karmine Corp échoue en finale des RLCSRocket League : La Karmine Corp échoue en finale des RLCS', 'Retour sur le parcours magistral de la meilleure équipe européenne sur Rocket League.\r\n\r\nLes RLCS sont un circuit qui ne pardonne personne, tournoi majeur sur Rocket League, il oppose toutes les deux semaines toutes les équipes européennes souhaitant se frotter aux meilleurs joueurs de la région. Car oui, les Rocket League Championships sont un tournoi ouvert à tous, qui, par son format, peut voir une équipe inconnue au bataillon être en concurrence avec des équipes comme Vitality ou GentleMates. Il y a donc logiquement la crème de la crème du jeu en Europe qui se bat pour jouer contre la deuxième région majeure, l’Amérique. Ces confrontations se font dans ce qu’on appelle un Major, avec du public, une grosse récompense de victoire ainsi qu’un enjeu particulier, la qualification aux Worlds, le plus grand championnat sur le jeu.\r\n\r\nCette année, une équipe se démarque au sein des RLCS et c’est nul autre que la Karmine Corp, pilotée par Vatira, Drali et Atow ainsi que leur coach Ferra. Un roster qui détruit tous les tournois depuis début janvier, ne laissant passer aucune défaite, pas même contre Vitality, qui est sur le papier la deuxième meilleure équipe de la région. GentleMates est dans une très mauvaise passe, enchaînant les défaites, détruisant leurs espoirs de qualification au premier Major à Birmingham.Le dernier régional n’en est pas moins frustrant pour la KCorp, qui a démarré sur les chapeaux de roue, toujours aucune défaite, même contre Vitality qui les met en danger. Le niveau est phénoménal jusqu’à la finale contre Geekay Esports. Une finale que tout le monde pensait acquise pour la Karmine Corp, invaincue depuis le début de la saison. Pourtant, les Saoudiens ont créé la surprise avec un 4-0 sans appel, laissant Vatira, Atow et Drali impuissants face à leur agressivité et leur précision.\r\n\r\nGrâce à cette victoire inattendue, Geekay Esports décroche sa qualification pour le Major de Birmingham, enchaînant trois victoires éclatantes en play-offs face à Redemption, Dignitas et la KC, toutes sur un score de 4-0.Côté français, la KCorp reste favorite malgré cette défaite et conserve sa place de seed 1 pour le Major, devant Vitality et Dignitas. GentleMates, en revanche, échouent à se qualifier, incapables de remporter une seule victoire en phase de groupes. Avec cette montée en puissance de Geekay, le Major promet des affrontements serrés, où même les favoris devront se méfier des outsiders.', 'https://cdn-www.konbini.com/files/2025/02/KARMINE-CORP-ROCKET-LEAGUE.png?width=1200&amp;quality=75&amp;format=webp', '2025-02-25 15:28:09', 1),
(3, 2, 'Mais c’est quoi cette fraise à 18 euros qui fait causer TikTok ?', 'Une seule fraise pour 18 euros ? Bienvenu chez Erewhon.\r\n\r\nAu Japon, il n’est pas rare de voir les fruits comme des produits de luxe, bien emballés, à offrir comme on offrirait des fleurs ou des chocolats. En 2021, une paire de melons extraordinaires s’y vendait même pour la vertigineuse somme de 40 000 euros. Alors, quand les fraises cultivées à Kyoto par les spécialistes des fruits de luxe Elly Mai s’exportent jusqu’en Californie, on les retrouve forcément dans les rayons de chez Erewhon, le supermarché des stars. Enfin fraises, plutôt fraise même, car le précieux fruit y est carrément vendu à l’unité, bien emballé, pour la coquette somme de 19 dollars (environ 18 euros). Mais alors, ça a quel goût une fraise de luxe ? L’utilisatrice de TikTok @alyssaantocii a cassé sa tirelire, et engrange plus de 10 millions de vues et 8 000 commentaires depuis le publication de sa vidéo dégustation ce dimanche.“Ouais, c’est définitivement la meilleure fraise que j’ai jamais mangée de ma vie” lâche la jeune Californienne après avoir croqué dans le fruit à la teinte rouge brillante emballé dans un petit étui protecteur. Pour le prix, on espère aussi, et en attendant que la saison des fraises arrive aussi chez nous, on se contentera d’imaginer leur parfum.', 'https://cdn-www.konbini.com/files/2025/02/fraise_erewhon.jpg?width=1200&quality=75&format=webp', '2025-02-25 15:59:00', 1),
(4, 3, 'C’est quoi ce “saladier dangereux” dégoûtant qui fascine 400 000 personnes sur TikTok', '400 000 abonnés en un mois ? Pour une potion magique bien crado ?\r\n\r\nVous êtes probablement tombés dessus, pendant un de vos récent doomscroll sans fin sur TikTok. Possiblement, vous avez vite swipé vers le bas si vous êtes censé. Mais, je n’y peux rien, et presque 400 000 autres personnes non plus, la mixture de l’utilisateur @bowlofdanger sur TikTok passionne depuis 40 jours les utilisateurs de l’application. Le principe ? Ajouter chaque jour des ingrédients suggérés par les commentaires dans une caisse, mélanger, et attendre que ça devienne dangereux. Trigger warning : dès la troisième vidéo quotidienne, ça devient dégueu.Miel, crème solaire et vinaigre, les ingrédients du premier jour du challenge sont déjà un brin tordus, mais, bien sûr, comme tous les contenus calibrés pour nous hypnotiser et assouvir notre dose de brainrot, on veut connaître la suite. Si vous êtes aventureux des mélanges douteux et n’avez pas peur de voir un gars de l’internet remuer une caisse de bouillasse tous les jours pendant 40 jours, vous savez où voir la suite.', 'https://cdn-www.konbini.com/files/2025/02/ron_HP.jpg?width=1200&quality=75&format=webp', '2025-02-25 15:59:56', 1),
(5, 1, 'Tony Hawk (le jeu) va revenir et c’est Tony Hawk (la star) qui l’annonce', 'Nouveau remaster en vue pour la célèbre franchise de jeux vidéo de skateboard.\r\n\r\nCe n’est plus une rumeur, mais bien un compte à rebours officiel. Le site de la franchise Tony Hawk’s Pro Skater invite les fans à se tenir prêts pour le 4 mars (03.04 en date américaine), un clin d’œil évident aux opus 3 et 4 sortis respectivement en 2001 et 2002. Après le succès critique et commercial de Tony Hawk’s Pro Skater 1 + 2, vendu à plus d’un million d’exemplaires dès sa sortie en 2020, Activision semble enfin prêt à donner une seconde jeunesse à ces deux autres classiques du jeu de skateboard.Toutefois, ce projet avait pourtant failli ne jamais voir le jour. Initialement confié à Vicarious Visions (devenu ensuite Blizzard Albany en 2022), le remaster avait été mis en suspens après l’absorption du studio par Activision.\r\n\r\n“Nous faisions 3 et 4, et puis Vicarious a été absorbé. Ils ont cherché d’autres développeurs, mais ça s’est arrêté là”, expliquait l’égérie Tony Hawk lui-même. Après plusieurs tentatives infructueuses pour trouver un studio de confiance, l’éditeur semble enfin avoir trouvé le bon.\r\n\r\nLes indices pointent de fait vers Iron Galaxy Studios, déjà responsable du portage PC de Tony Hawk’s Pro Skater 1 + 2 et impliqué dans les remasters de Crash Bandicoot et Spyro. Une bonne nouvelle néanmoins ternie par la récente restructuration du studio, qui a licencié 66 employés. Malgré ce contexte difficile, le développement semble bien avancé et l’annonce du 4 mars devrait lever le voile sur cette nouvelle compilation. Reste à voir si elle sera à la hauteur des attentes des fans.', 'https://cdn-www.konbini.com/files/2025/02/TonyHawkRemasterFeat.png?width=1200&quality=75&format=webp', '2025-02-25 16:02:24', 1),
(6, 4, 'De la pâte à tartiner, du collagène et des mini usines dans Qui veut être mon associé ? : le grand n’importe quoi des réseaux sociaux', '\"Je vous propose de me filer 1 million d’euro pour redresser mon entreprise svp\".\r\n\r\nCe mercredi soir était diffusé le 3e épisode de la nouvelle saison de Qui veut être mon associé ? sur M6. Au programme cette semaine, la folie du collagène marin, des tabourets en carton, des usines de recyclage et Patrick Bruel qui mange de la pâte à tartiner. Évidemment, comme chaque semaine, les pitchs et les réponses des investisseurs ont inspiré les twittos.', 'https://cdn-www.konbini.com/files/2025/02/GNQ-BOURBON.png?width=1200&quality=75&format=webp', '2025-02-25 16:04:46', 1),
(7, 3, 'Jordy, Ilona, Mimi Siku : on vous donne des nouvelles des enfants stars des années 90/2000\r\nJordy, Ilona, Mimi Siku : on vous donne des nouvelles des enfants stars des années 90/2000', 'Je m\'appelle Jordy, j\'ai 4 ans et je suis petit.\r\n\r\nUne carrière, ça peut aller très vite. Surtout si elle commence à moins de 15 ans. Très vite érigés comme chouchous du public – principalement parce qu’ils sont mignons – beaucoup d’enfants ont connu une gloire (très) éphémère dans les années 90 et 2000. Vous vous souvenez de Jordy, Mimi Siku ou de Mickaël des Trois Frères ? On vous donne des nouvelles de ces anciens enfants stars. Impossible de ne pas penser à Jordy quand on parle des enfants stars des années 90. À seulement 4 ans, le petit blondinet, avec sa veste en jean et son foulard autour du cou – un cosplay de Renaud, le Ricard en moins – devient le roi du Top 50 avec son album Pochette surprise, porté par les singles Alison et Dur, dur d’être bébé. La carrière du petit chanteur sera aussi improbable que rapide : tournée internationale aux États-Unis, au Brésil et au Japon, création du parc de loisirs La Ferme de Jordy, et même une prestation aux World Music Awards, devant les yeux de Prince et Whitney Houston qui se demandent ce qu’ils sont en train de voir.', 'https://cdn-www.konbini.com/files/2025/02/unindiendanslaville.jpg?width=1200&quality=75&format=webp', '2025-02-25 16:29:00', 1),
(8, 3, 'Mister V, Squeezie et SDM nous livrent du grand divertissement : on a regardé “Les Salles” d’Amine et on s’est régalés', 'Mister V qui se croit dans Severance et Squeezie et SDM dans un western, on signe.\r\n\r\nBon, quand il s’agit de faire des lives de fou, Amine sait faire. Le streamer commence à faire de plus en plus de streams au format “émissions” en pure divertissement et Les salles en faisaient clairement partie. Le principe est simple : trois duos composés de streamers et de rappeurs avaient pour objectif de compléter des salles à thème en venant à bout de toutes sortes d’happenings. On a vu donc les excellents Billy, Soolking, SDM, Squeezie et Yvick se succéder pour notre plus grand plaisir. ', 'https://cdn-www.konbini.com/files/2025/02/Design-sans-titre-2025-02-18T101919.065.png?width=1080&quality=75&format=webp', '2025-02-25 16:30:42', 1),
(9, 2, 'Ça y est, ils ont mis l’audio de Francis Huster sur la scène déjà mythique de Laura Felpin dans bref.2', 'L&#039;internet a internété.\r\n\r\n“Tuez-moi !”, vous l’avez forcément, le mème de mettre l’audio de Francis Huster sur des scènes de films (ou de télé-réalité). Si vous vivez loin de l’internet, notre journaliste tech Pierre Bazin vous explique sa genèse ici. Forcément, avec le succès de la deuxième saison de bref sur Disney+, la scène de Laura Felpin sur l’odeur de frometon dans le frigo a elle aussi, le droit à sa version partagée sur X/Twitter par l’utilisateur @lenydoizo. Comme une bonne traînée de poudre, on risque d’avoir droit à un paquet de versions, que ce soit le discours d’Anatomie d’une Chute ou un bon “Montoyaaaaa”. Après vous être marré un coup, si vous êtes dans bref, on a classé les personnages de cette nouvelle saison.\r\n\r\nbref.2 est dispo en streaming sur Disney+.', 'https://cdn-www.konbini.com/files/2025/02/laura_felpin.jpg?width=1080&amp;quality=75&amp;format=webp', '2025-02-25 16:32:04', 1),
(10, 2, 'Il se casse les métatarses avec du parfum Valentino et on respire un grand coup dans l’espace', 'On scrolle quelques histoires de sent-bon sur le TikTok des amateurs de (plus ou moins) bonnes odeurs.\r\n\r\nCet article a d’abord été publié dans notre newsletter Fast Forward le 13 février 2025. Ce vendredi, c’est la Saint-Valentin, et on vous a évidemment préparé un petit guide d’amour, loin des injonctions, avec du self-love et même une sombre affiche de Ligue 1 dedans. En le préparant, j’ai remis un petit doigt (de pied) dans les parfums de niche, et mon algo TikTok s’est chargé de tout faire dérailler vers deux histoires parfumées qui sentent le chagrin d’amour et le brainrot. Comme l’amour c’est surtout du partage, je vous refile mon petit fardeau, mes petits valentins et valentines.\r\n\r\nNotre premier candidat s’appelle Isaac Batalla et sa vidéo la plus vue, postée le 1er février est titrée “on voit quel bouchon de fragrance fait le plus mal”, dépasse les 8 millions de vues et se voit affublée du message de prévention de l’application “participer à cette activité peut faire du mal à vous ou à autrui”. Le concept ? Suivre la trend de se lâcher des trucs sur le pied, juste en chaussettes. Des bouchons ok, mais, les vues aidant, Isaac s’est mis à se lâcher des bouteilles de parfum d’un bon mètre de haut sur ses petons. Son nemesis ? Une bouteille de Valentino qui vaut selon Isaac un 10000/10 sur son échelle de la douleur. Oui, c’est immensément con. Mais vu que je ne peux pas m’empêcher de regarder, je suis probablement tout aussi toctoc (de TikTok). Notre seconde aventure olfactive est de celles qu’on voit souvent sur TikTok, où une info datée d’il y a quelques années revient faire un tour de piste sur nos feeds. Vous vous souvenez peut-être d’articles, datés de 2020, se questionnant sur l’odeur de l’espace, et d’un parfum devenu viral, Eau de Space. “This is what space smells” titrait dessus CNN, nous expliquant que la fragrance permettait aux potentiels astronautes de s’habituer à l’odeur pas ouf de l’aventure spatiale. Les meilleurs nez de TikTok ont donc ressuscité le test du fameux parfum, et selon l’utilisatrice NotJeanGrey, difficile de ne pas avoir la nausée en respirant d’un bon coup de nez les effluves mi pisse de chat mi pile 9 volts rance de ce drôle d’élixir.\r\n\r\nJe ne vais pas vous laisser dans cette ambiance à se boucher le nez, alors on redescend sur terre avec notre sélection de bougies pour la Saint-Valentin. Mes crush ? Celle en forme de pêche de chez Merci Paris et celle bien Nicole Kidman dans Babygirl de chez Boy Smells.', 'https://cdn-www.konbini.com/files/2025/02/parfum_tiktok_feat.jpg?width=1080&quality=75&format=webpp', '2025-02-25 16:33:48', 1),
(11, 4, 'On a tous pris une petite claque devant bref.2 : le grand n’importe quoi des réseaux sociaux', 'On savait qu\'on allait se marrer, moins qu\'on allait aussi sacrément chialer.\r\n\r\nOn l’attendait comme une madeleine, on se l’est pris comme une lame de fond, et sur X/Twitter, tout le monde, surtout les trentenaires et jeunes quarantenaires, semble avoir versé sa larme devant la suite du mythique feuilleton de Kyan Khojandi, bref.2. ', 'https://cdn-www.konbini.com/files/2025/02/bref2_gnq.jpg?width=1200&quality=75&format=webp', '2025-02-25 16:35:41', 1),
(12, 4, 'La France met 70 points à l’Italie au Tournoi des Six Nations : le grand n’importe quoi des réseaux sociaux', 'Veni vidi vici.\r\n\r\nLa France poursuit son ascension de l’Europe dans ce tournoi des Six Nations. Après une cruelle défaite contre l’Angleterre, il fallait se remobiliser à l’approche de l’Irlande face à des Italiens complètement prenables. Dans un festival offensif et pas très défensif, la France l’emporte 73 à 24, Antoine Dupont est élu homme du match, et la semaine débute parfaitement bien. ', 'https://cdn-www.konbini.com/files/2025/02/feat-rugby.jpg?width=1200&amp;quality=75&amp;format=webp', '2025-02-25 16:36:11', 1),
(13, 3, 'La musique, c’est surcôté : Lily Allen a trouvé un job bien plus rentable… avec ses pieds', 'Idée de reconversion pour nous aussi ?\r\n\r\nEn juin 2024, Lily Allen annonçait vendre des photos de ses pieds sur OnlyFans après avoir reçu des vagues de compliments de la part de son esthéticienne (et de la page de fétichistes des pieds WikiFeet). Près d’un an plus tard, on espère que l’esthéticienne a négocié un pourcentage des bénéfices pédestres puisque Lily Allen a confié que les images de ses petits pieds parfaits lui rapportaient davantage que ses streams. C’est en réponse à un internaute visiblement bien mal embouché qui lui reprochait d’être “une des plus grosses pop stars/musiciennes d’Europe et en être réduite à ça” que la pop star en question a mis les points sur les I (et lui en a bouché un coin) : “Imagine être une artiste avec près de 8 millions de personnes qui écoutent tes titres sur Spotify chaque mois et gagner plus de sous grâce aux 1 000 personnes abonnées à tes photos de pieds.” Ce à quoi Lily Allen a répondu “Ne hais pas le joueur, hais le jeu”, en référence au système de rémunération des artistes sur les plateformes d’écoute. Selon un article Billboard, relayé par PopCrave sur X/Twitter, Lily Allen gagnerait “4 077 dollars par jour grâce à Spotify”. Une affirmation aussitôt réfutée par la chanteuse, toujours sur X : “C’est incroyablement trompeur mais je ne suis pas assez intelligente pour bien expliquer comment je ne perçois qu’un tout petit pourcentage de ce qui est cité ici. Il faudra juste me faire confiance quant au fait que le capitalisme néolibéral n’en a rien à faire que les artistes soient payés pour leur travail.”\r\n\r\nD’après nos calculs experts, Lily Allen gagnerait environ 10 000 dollars par mois grâce à son OnlyFans dont l’abonnement est fixé à 10 dollars le mois. 10 dollars multipliés par 1 000 fans est égal à 10 000 dollars – si j’ai bien compris comment on ajoutait des zéros dans les multiplications. La chanteuse gagnerait donc avec ses streams (au moins) douze fois moins que ce qu’affirme Billboard. Avant même de lui rapporter des gros billets, son side hustle rapportait à la chanteuse un sentiment d’empouvoirment pas désagréable : “Je trouve que c’est très valorisant. Ayant été très sexualisée dès mon plus jeune âge, avec tout ce petit monde qui profitait de cette sexualisation, c’est vraiment amusant d’avoir le pouvoir et le contrôle de quelque chose que je trouve si stupide”, affirmait-elle dans son podcast Miss Me?. Reprendre le pouvoir tout en voyant son compte en banque gonfler ? Laissez-moi deux minutes le temps que je retire mes chaussettes et que j’attrape mon téléphone.', 'https://cdn-www.konbini.com/files/2025/02/lily-allen.png?width=1200&amp;quality=75&amp;format=webp', '2025-02-26 10:18:14', 1),
(14, 4, 'Koh-Lanta est de retour avec La Revanche des 4 Terres : le grand n’importe quoi des réseaux sociaux', 'Pourquoi aller à la salle d&#039;escalade quand on a un escalier ?\r\n\r\nKoh-Lanta est de retour, et si on n’a pas encore retenu les prénoms des candidats, tout X est unanime : on est sur un casting de zinzin. Nos régions ont du talent dans cette édition en équipe, et nos twittos aussi, avec des vannes de qualité dès le premier épisode. Le conseil s’est terminé tard, mais on se retrouve déjà mardi prochain à 21h10 sur TF1.', 'https://cdn-www.konbini.com/files/2025/02/koh-lanta_gnq_feat.jpg?width=1200&amp;quality=75&amp;format=webp', '2025-02-26 10:20:38', 1),
(15, 1, 'Désolé les dresseurs, vous ne pourrez pas encore devenir riches et célèbres grâce à Pokémon TCG Pocket', 'Le rêve de devenir pro gamer grâce à Darkrai et Magnezone réduit à néant.\r\n\r\nDepuis la sortie de Pokémon TCG Pocket en octobre 2024, on est tous en train de se battre en match aléatoire, de torcher les événements éphémères pour choper des badges et de piocher de façon pas très miraculeuse. Si certains tournois en ligne existent où il est possible de gagner un peu d’argent, on n’a toujours aucune nouvelle quant à une vraie scène eSport. Hélas pour toutes les personnes qui veulent percer sur ce jeu, il va falloir encore attendre. Dans une interview pour le média videogameschronicle, Christopher Brown, directeur de la branche eSport mondiale de la Pokémon Company, a révélé qu’inclure Pokémon TCG Pocket dans les championnats eSport n’était pas au programme : “Pour le moment, il n’est pas prévu pour Pokémon Pocket d’être intégré, mais nous étudions toujours les possibilités”. Évidemment, la porte n’est pas fermée, mais il va falloir encore patienter pour devenir professionnel en plaçant Drakkarmin en Pokémon actif.', 'https://cdn-www.konbini.com/files/2025/02/feat-pokemon-tcg-pocket.jpg?width=1200&amp;quality=75&amp;format=webp', '2025-02-27 12:29:58', 1),
(16, 1, 'Dis-moi ton signe astro, je te dirais ton arme sur Monster Hunter', 'Parce qu&#039;une arme de prédilection c&#039;est surtout une personnalité de Chasseur.\r\n\r\nMonster Hunter est une série de jeux vidéo devenue aujourd’hui culte. Si les premiers jeux des années 2000 n’ont eu que très peu d’écho au-delà du Japon, l’épisode Monster Hunter : World sorti en 2018 a fait découvrir la franchise à un public bien plus massif et international. Pour résumer Monster Hunter, c’est un jeu dans lequel vous incarnez un·e Chasseur/Chasseuse pour aller péter la tronche à d’énormes monstres ailés, visqueux, poilus ou même enflammés. Et une fois que vous avez terrassé ces monstres, vous utilisez leurs cadavres pour confectionner de meilleures armes pour aller péter la tronche à d’encore plus gros monstres. Le cycle de la vie en bref.\r\n\r\nEt ce qui fait la singularité de Monster Hunter, ce sont bien les armes, toutes différentes, avec leurs identités propres, leurs gameplays spécifiques, leurs looks plus ou moins déjantés et bien sûr l’aura qu’elles dégagent. Tandis que l’excellent Monster Hunter Wilds pointe le bout de son nez\r\nBélier : Lance/Lancecanon\r\n\r\nQuoi de mieux qu’une grosse lance et un bouclier pour le signe le plus “fonceur”. Les Béliers sont spontanés et préfèrent donc charger droit dans le monstre et réfléchir ensuite à comment parer (ou pas) la prochaine claque du Rathalos en face. Taureau : Grande Épée\r\n\r\nLe Taureau est solide sur ses appuis, il a commencé avec la Grande Épée depuis le tout premier Monster Hunter et ne l’a jamais lâchée depuis. Simple, efficace, terre à terre, on charge et on découpe. Ah oui, et le Taureau n’esquive pas, il prie juste pour que sa garde passe.\r\nGémeaux : Doubles Lames\r\n\r\nGémeaux, Doubles Lames vous l’avez ? Bon en vrai, les Doubles Lames fonctionnent plutôt bien pour les TDAH que sont les Gémeaux : faire plein de trucs à la minute et exploser en plein vol quand l’énergie s’accumule trop.\r\nCancer : Épée et Bouclier\r\n\r\nLe bouclier représente la carapace d’émotions des Cancers et la minuscule épée leur volonté de ne jamais blesser personne. Voilà c’est ma théorie et je suis Cancer donc elle est vraie – je hais mon signe et je hais cette arme.\r\nLion : Épée Longue\r\n\r\nÉvidemment, c’est le signe qui aime le plus les caméras qui se doit de maîtriser l’Épée Longue. Tout en explosivité et gestes classes mais inutiles, le “Katanoob” est parfaitement adapté aux égos mal placés.\r\nVierge : Arc\r\n\r\nDe nature prudente, les Vierges sont de très bons Archers. Juste ils mettent trois plombes à s’organiser pour choisir tous les enduits qu’ils vont utiliser.\r\nBalance : Insectoglaive\r\n\r\nLes Balances sont des beaux parleurs et de l’esbroufe il en faut pour nous convaincre que l’Insectoglaive, arme la plus hipster de Monster Hunter, est une arme “accessible” et surpuissante.\r\nScorpion : Marteau\r\n\r\nLe Scorpion est direct. Le Marteau est direct. Une arme agressive pour un signe hargneux. Simple, basique.\r\nSagittaire : Morpho-Hache\r\n\r\nLa Morpho-Hache se la pète un peu, comme les Sagittaires d’ailleurs. Et en même temps, c’est une arme assez versatile qui épouse parfaitement les envies de liberté de ce signe.\r\nCapricorne : Fusarbalète\r\n\r\nIl paraît que les Capricornes sont très rationnels. Donc forcément, ce sont les seuls qui vont choisir cette arme de distance pour littéralement chasser au fusil tandis que le reste continue de se battre comme au Moyen-Âge. De toute façon, la Fusarbalète c’est un truc de lâche.\r\nVerseau : Volto-Hache\r\n\r\nSuis-je une épée ? Suis-je une hache ? Un peu des deux et même un bouclier avec tout ça. Bref, la Volto-Hache correspond parfaitement à l’indécision du Verseau, toujours en recherche de changement et qui finit par se défouler sur le premier Diablos venu.\r\nPoissons : Corne de chasse\r\n\r\nIl n’y a vraiment que les Poissons pour choisir un instrument de musique comme arme et en même temps c’est un signe très altruiste donc on aime forcément voir se ramener un Chasseur-Musicien dans la session de chasse.', 'https://cdn-www.konbini.com/files/2025/02/MHZodiacFeat.png?width=1200&amp;quality=75&amp;format=webp', '2025-02-27 13:34:14', 1),
(17, 3, 'Qui a inventé le tout premier mème ? Spoiler : ça ne vient pas d’Internet', 'Théories sur le format de vanne le plus couru de notre époque.\r\n\r\nMais ça vient d’où les mèmes ? On s’en envoie tous les jours, ils permettent de nouer des amitiés et font parfois office de ponctuation, pourtant – et bien que leur existence ait été théorisée dès 1976 –, on a du mal à savoir quel est le premier mème de l’histoire. Un peu comme les légendes urbaines, on sait rarement qui a créé un mème, et quand ce dernier a vu le jour. Mais comme ici, on n’a pas peur des folles enquêtes, on a investigué pour que vous n’ayez pas à le faire. Le mème d’avant (même) Internet\r\n\r\nLe premier mème serait apparu avant même que n’existe Internet, en 1921. On ne parle pas ici d’une œuvre antique qui aurait été agrémentée a posteriori d’inscriptions pour coller à notre XXIe siècle, mais bien d’un mème déjà complet. Imaginé il y a plus d’un siècle sous forme de bande dessinée, le mème présente un “Attentes vs. Réalité” efficace où un élégant jeune homme passe de “ce à quoi il croit ressembler quand il est pris en photo avec un flash” et “ce à quoi il ressemble vraiment”. Le dessin a été publié dans The Judge, magazine satirique de l’université de l’Iowa. Pourquoi ça pourrait ne pas être un mème : parce qu’un mème est fait pour être partagé d’une personne à l’autre, il n’est pas supposé couler d’une source unique à un public. De plus, le dessin n’a pas été réimaginé par un tiers, ni repris ou détourné pour raconter autre chose afin d’exprimer une réaction universelle à partir d’une situation particulière. Il a été créé tel quel, inscriptions comprises. Pourquoi on décide que c’en est un quand même : parce qu’en 1976, Richard Dawkins a défini le mème comme un élément culturel qui repose sur l’imitation du comportement humain. Le cartoon tape donc dans le mille. De plus, c’est tout de même assez plaisant de s’imaginer qu’il y a un siècle, nos aïeules et aïeux partageaient le même humour que nous – l’équivalent de 2023 pourrait être : ton reflet dans le miroir vs. l’objectif avant de ton téléphone.\r\nLe mème star de la télé\r\n\r\nÀ l’automne 1996, six ans après la mise en ligne de la toute première page Internet, est publiée l’image animée d’un bébé qui danse en tournant sur lui-même, sur un fond noir. Conçu par Michael Girard, John Chadwick (deux étudiants de, tiens tiens, la Ohio State University, encore elle) et Susan Amcloud qui venaient de lancer leur société d’animation, le “Dancing Baby” était à la base un fichier type servant à promouvoir le logiciel du trio. Selon un de ses créateur·rice·s interrogé par BuzzFeed, la vidéo a hypnotisé les foules grâce à la prouesse technique qu’elle présentait ainsi que la dissonance ressentie entre le petit corps du bébé et ses mouvements d’adulte.\r\n\r\nPourquoi ça pourrait ne pas être un mème : on pourrait arguer que le bébé est davantage un gif qu’un mème. Dans l’imaginaire commun, un mème est une photo ou un dessin qui raconte quelque chose.\r\n\r\nPourquoi on décide que c’en est un quand même : bien que conçu avant l’apparition des réseaux sociaux, la vidéo a été partagée à grande échelle par… mail. L’apparition du “Dancing Baby” dans un épisode d’Ally McBeal a lancé un emballement médiatique autour de la vidéo et un lycéen du nom de Rob Sheraton a intégré le fichier à son site afin que tout le monde puisse le télécharger et le transformer à sa guise. Et le mème fut.\r\nLe mème théorique\r\n\r\nVous avez sans doute déjà entendu parler de la “loi de Godwin”, qui énonce que “plus une discussion en ligne se prolonge, plus la probabilité d’y trouver une comparaison impliquant les nazis ou Adolf Hitler s’approche de un”. Mike Godwin, théoricien de cette loi empirique à laquelle il a donné son nom, décrivait son point comme un mème dès 1994.\r\n\r\nDans l’article intitulé “Mème, contre-mème”, il explique avoir imaginé sa théorie en 1990 comme un exemple de mémétique – champ d’étude qui “tente d’appliquer les concepts de la théorie de l’évolution à l’étude de la culture humaine” d’après le concept de mème imaginé par le biologiste Richard Hawkins dans son livre Le Gène égoïste, publié en 1976. Pourquoi ça pourrait ne pas être un mème : parce que ce n’est pas hyper-marrant, on vous l’accorde, et c’est davantage une idée qu’une image.\r\n\r\nPourquoi on décide que c’en est un quand même : parce que son créateur l’affirme. Pour lui, un mème est “une idée qui fonctionne dans l’esprit de la même façon qu’un gène ou un virus fonctionne dans le corps. Et une idée infectieuse (qu’on appellera ‘mème viral’) passe d’esprit en esprit, tout comme les virus sautent de corps en corps”. Il a écrit avoir compris que son expérience était “un succès” lorsqu’il a vu des personnes citer la loi par elles-mêmes, sans savoir qu’elle venait de lui.', 'https://cdn-www.konbini.com/files/2025/02/meme.jpg?width=1200&amp;quality=75&amp;format=webp', '2025-02-27 14:32:41', 1),
(18, 3, 'C’est vraiment cracra de s’asseoir sur son lit avec le jean qu’on a porté dehors ?', 'On a enfin la réponse.\r\n\r\nManny, Noah et Devan, les trois animateurs du podcast No Such Thing, ont le chic pour répondre à des questions qu’on s’est tous déjà posées. “Les chiens de la campagne sont-ils plus heureux que les chiens des villes ?”, “Les hommes doivent-ils s’asseoir pour uriner ?”, “Est-ce que Letterboxd tue les films ?”, “Est-ce qu’on saurait faire atterrir un avion en perdition ?” ; les trois garçons ratissent large. Dans un épisode diffusé en janvier, ils s’attaquent à nos intérieurs et se posent la question qui divise : est-ce que c’est OK de porter nos vêtements de dehors sur nos lits ? Après quelques anecdotes et un sondage qui montre à quel point le sujet divise – 47% des personnes interrogées pensent que c’est OK, 53% pas du tout –, c’est la microbiologiste Docteur Lisa Cuchara, professeure à l’université de Quinnipiac, qui répond très sérieusement à la question grâce à des tests réalisés en laboratoire. Verdict : oui, c’est dégueu de s’asseoir sur son lit avec le jean qu’on a porté dehors toute la journée. La preuve ? Si les échantillons ne montrent pas d’agents pathogènes, les bactéries transférées depuis un jean sur un lit propre sont au minimum multipliées par 20. Si vous voulez jeter une oreille et un œil aux chiffres, en version originale, ça se passe sur le site du podcast No Such Thing.', 'https://cdn-www.konbini.com/files/2025/02/jean_lit_feat.jpg?width=1200&amp;quality=75&amp;format=webp', '2025-02-27 14:34:14', 1),
(19, 3, 'Je suis incroyable', 'C&#039;est génial ce site franchement j&#039;adore', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ8Fp8DrVshLpws-CLZKsTFjgXNjRR229_wiQTkAFo-AHedRZM28SZiF2_zbB5c67G55-ISYLVJl_-tgutuuJSI3aHHShEgJp3qBcSvfA', '2025-02-28 14:58:09', 2);

--
-- Triggers `articles`
--
DROP TRIGGER IF EXISTS `articles_before_insert`;
DELIMITER $$
CREATE TRIGGER `articles_before_insert` BEFORE INSERT ON `articles` FOR EACH ROW BEGIN
	SET NEW.created_at = NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Gaming'),
(2, 'Trends'),
(3, 'Culture Internet'),
(4, 'Grand n\'importe quoi');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `content`, `created_at`, `user_id`) VALUES
(1, 1, 'J&#039;ai trop hâte de voir ce film, ca va être incroyable.', '2025-02-27 10:02:57', 3),
(2, 1, 'Trop bien ! en plus j&#039;adore Elden Ring !', '2025-02-27 12:18:42', 4),
(3, 15, 'Non je voulais devenir riche !!!', '2025-02-27 14:35:37', 5),
(4, 15, 'Pourquoi !! J&#039;ai fait toute cette aventure pour rien !', '2025-02-27 14:36:09', 4),
(5, 2, 'KCorp > GentleMates', '2025-02-27 14:36:53', 6),
(6, 2, 'Mon équipe est trop forte !', '2025-02-27 14:38:34', 6),
(7, 2, 'GentleMates &gt;&gt;&gt;&gt;&gt; KCorp Bouuuuhhh', '2025-02-27 14:39:15', 7),
(8, 5, 'Trop bien, je vais pouvoir mis mettre vu que j&#039;ai plus le multiplat', '2025-02-27 14:40:39', 8),
(9, 16, 'Je suis taureau moi', '2025-02-27 14:41:28', 5),
(10, 16, 'Moi jsuis vierge', '2025-02-27 14:42:07', 7),
(11, 16, 'Moi j&#039;ai le cancer', '2025-02-27 14:42:54', 6),
(12, 17, 'Incroyable !! Je ne savais pas du tout.', '2025-02-28 10:35:29', 3),
(13, 18, '48% beurk', '2025-02-28 10:38:09', 2),
(14, 14, 'Il va ce tuer le papi.', '2025-02-28 10:38:42', 3),
(15, 9, 'J&#039;adore !!', '2025-02-28 14:54:47', 8),
(16, 19, 'deso pas deso', '2025-02-28 14:58:35', 2),
(17, 19, 'Cette article est incroyable !', '2025-03-03 12:05:25', 3);

--
-- Triggers `comments`
--
DROP TRIGGER IF EXISTS `comments_before_insert`;
DELIMITER $$
CREATE TRIGGER `comments_before_insert` BEFORE INSERT ON `comments` FOR EACH ROW BEGIN
	SET NEW.created_at = NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Konbini', 'contact@konbini.fr', '$2y$10$/.nVdq0S/fzoBBDlQtICHuKbl6Y0edg.0bh1XwCjAY4gs2t3MVpcC', '2025-03-03 11:28:08'),
(2, 'Maksime', 'maksime@gmail.com', '$2y$10$p/VfuANA8e5ogvqGRSPSZeaQKMxEoSloC.lQWelDP6q84vBHTd0da', '2025-03-03 11:31:08'),
(3, 'Regis54', 'regis54@gmail.com', '$2y$10$wSNPzipyAEcPNfF0rfY5DeMl917klfixZp5DmMYhOnpNLzcD4SXLG', '2025-03-03 11:43:35'),
(4, 'Sacha PERLIPOPETTE', 'sacha.perlipopette@gmail.com', '$2y$10$4yEVpZejcRLTJzXQHJEurOtuyOSkYKUZCirZEg3d2clFFignhnbpe', '2025-03-03 11:46:09'),
(5, 'Prof. Chen', 'prof.chen@gmail.com', '$2y$10$lUGKRGobhcBowcMWKWzeB.JR4BUoZRd0d1vPJ2Bn1jTwO5rnhvLFG', '2025-03-03 11:47:49'),
(6, 'Shadow', 'shadow@gmail.com', '$2y$10$2OG6OoHup.fYEuJl.wkPOe5/UswF9OZwDwOpm1s2QVgt7g.35veqe', '2025-03-03 11:51:18'),
(7, 'Nathan', 'nathan@gmail.com', '$2y$10$lQ93MjJs.HORoi1yEiZd7uFDx0WtznHqBORza4xYkVsv8JwWRr1R6', '2025-03-03 11:53:41'),
(8, 'Pierre Chabrier', 'pierre.chabrier@gmail.com', '$2y$10$CtpVgSUjTtnmkhynnCxLAuCQowRXSCu/xJA7/x6QOLpKzFkJ3cykq', '2025-03-03 11:54:52');

--
-- Triggers `users`
--
DROP TRIGGER IF EXISTS `users_before_insert`;
DELIMITER $$
CREATE TRIGGER `users_before_insert` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
	SET NEW.created_at = NOW();
END
$$
DELIMITER ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_fk_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
