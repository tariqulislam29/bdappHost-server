-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 10:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdappsproapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `new_app`
--

CREATE TABLE `new_app` (
  `id` int(10) UNSIGNED NOT NULL,
  `reg_id` int(11) NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `sms_keyword` varchar(50) NOT NULL,
  `ussd_keyword` int(11) NOT NULL,
  `delivery_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_app`
--

INSERT INTO `new_app` (`id`, `reg_id`, `app_id`, `api_key`, `sms_keyword`, `ussd_keyword`, `delivery_time`) VALUES
(2, 2, 'demo', '123554444', '23434ddd', 34344, '06:29:00'),
(3, 2, 'app-08887', 'jdsdksjksjdskjdskdsjkdsdsdsd', '23434ddd', 87977, '16:31:00'),
(4, 2, 'app-383822', 'ffrerdfdfd', '23434ddd', 36363, '00:09:00'),
(7, 1, 'tadssd', 'dsdsd', 'dsd', 323232, '13:17:00'),
(8, 3, 'app-08887', '123333333323232323', 'dsdsd', 34344, '10:38:00'),
(9, 4, 'app-08887', '123456', 'demo', 34344, '11:10:00'),
(10, 4, 'app-4343', 'dsdsdklsdksl', 'demo', 87977, '12:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `new_content`
--

CREATE TABLE `new_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `new_id` int(11) NOT NULL,
  `reg_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_content`
--

INSERT INTO `new_content` (`id`, `new_id`, `reg_id`, `date`, `content`, `status`) VALUES
(157, 3, 2, '2024-01-10', 'Nowhere (নাওহয়ার) = কোথাও;\r\nPlenty (প্লেনটি) = প্রচুর;\r\nPig (পিগ) = শূকর;\r\nArrange (এরেঞ্জ) = ব্যবস্থা করা;\r\nBound (বাউন্ড) = আবদ্ধ;\r\nHome (হোম) = বাড়ি;\r\nProper (প্রোপার) = সঠিক;\r\nCatch (ক্যাচ) = ধরা;\r\n', 'Pending'),
(158, 3, 2, '2024-01-11', 'Interpret (ইন্টারপ্রেট) = ব্যাখ্যা করা;\r\nPill (পিল) = পিল;\r\nwidth (ওয়াইড) = প্রস্থ;\r\nCover (কভার) = আবরণ;\r\nNor (নর) = নয়, না;\r\nWeigh (ওয়েট) = ওজন করা;\r\nSnow (স্নো) = তুষার;\r\nFall (ফল) = পতন ঘটা;\r\n', 'Pending'),
(159, 3, 2, '2024-01-12', 'Slide ( স্লাইড ) = পথ; \r\nPiano ( পিয়ানো ) = পিয়ানো; \r\nZero ( জিরো ) – শূন্য; \r\nDirt ( ডার্ট ) = ময়লা; \r\nAvoid ( এভোয়েড ) = এড়াতে; \r\nMine ( মাইন ) = খনি; \r\nStrict ( স্টিক ) – যথাযথ; \r\nLane ( লেন ) = গলি;\r\n', 'Pending'),
(160, 3, 2, '2024-01-13', 'Education ( এডুকেশন ) = শিক্ষা;\r\nAngry ( অ্যাংরি ) = রাগী;\r\nLeg ( লেগ ) = পা;\r\nEdition ( এডিশন ) = সংস্করণ;\r\nReduction ( রিডাকশন ) = কমানো;\r\nPanel ( প্যানেল ) = প্যানেল, নামসূচি;\r\nBush ( বুশ ) = ঝোপ;\r\nEdge ( এডজ ) = প্রান্ত;\r\n', 'Pending'),
(161, 3, 2, '2024-01-14', 'Removal ( রিমোভাল ) = অপসারণ;\r\nRest ( রেস্ট ) = বিশ্রাম;\r\nFrame ( ফ্রেম ) = গঠন;\r\nConfuse ( কনফুজ ) = বিশৃঙ্খল করা;\r\nReputation ( রেপুটেশন ) = খ্যাতি;\r\nCheat ( চিট ) = প্রতারণা;\r\nPublish ( পাবলিশ ) = প্রকাশ করা;\r\nBuy ( বায় ) = কেনা;\r\n', 'Pending'),
(164, 3, 2, '2024-01-17', 'demo\ndddddddddddddddddddddddddddddddddddddddddddd', 'Pending'),
(166, 3, 2, '2024-01-16', 'Honest (অনেস্ট) = ন্যায়বান;\r\nTravel (ট্রাভেল) – ভ্রমণ;\r\nGrandfather (n)= দাদা , পিতামহ;\r\nComplicate (কমপ্লিকেট) = জটিল;\r\nApprove (এপ্রভ) = অনুমোদন করা;\r\nMeal (মিল) = খাবার;\r\nEncounter (এনকাউন্টার) = সম্মুখীন হওয়া;\r\nImport (ইম্পোর্ট) = আমদানি;', 'Failed'),
(167, 3, 2, '2024-01-20', 'Below (বিলো) = নিচে;\n', 'Pending'),
(168, 3, 2, '2024-01-21', 'Paint (পেইন্ট) = রং;\r\nEarn (আর্ন) = আয় করা;\r\nDivorce (ডিভোর্স) = বিবাহবিচ্ছেদ;\r\nyard (ইয়ার্ড) – উঠান;\r\nyet (ইয়েট) – অথচ,  এখনো;\r\nhello ( হেলো) = ওহে ;\r\nEconomy (ইকোনমি) = অর্থনীতি;\r\nAugust (আগস্ট) = অগাস্ট;', 'Pending'),
(169, 3, 2, '2024-01-22', 'Launch (লঞ্চ) = শুরু করা;\r\nBear (বিয়ার) = সহ্য করা / ভালুক;\r\nArt (আর্ট) = শিল্প;\r\nUncomfortable (আনকমফোর্টেবল) – অস্বস্তিকর;\r\nBelief (বিলিফ) = বিশ্বাস;\r\nAutomatic (অটোমেটিক) = স্বয়ংক্রিয়;\r\nBelong (বিলং) = অন্তর্গত;\r\nDrug (ড্রাগ) = ঔষধ;', 'Pending'),
(170, 3, 2, '2024-01-23', 'Fortune (ফরচুন) = ভাগ্য;\r\nTank (ট্যাংক) – ট্যাঙ্ক, পুকুর;\r\nSomething (সামথিং) = কিছু;\r\nIntelligence (ইন্টেলিজেন্স) = বুদ্ধিমত্তা;\r\nRegular (রেগুলার) = নিয়মিত;\r\nUnderground (আন্ডারগ্রউন্ড) – ভূগর্ভস্থ;\r\nValue (ভ্যালু) – মূল্য;\r\nPrisoner (প্রিসনার) = বন্দী', 'Pending'),
(171, 3, 2, '2024-01-24', '\r\nAcknowledge (একনলেজ) = স্বীকার করা;\r\nSadness (স্যাডনেস) = বিষণ্ণতা;\r\nmeet up (মিটআপ ) = দেখা করা;\r\nCoat (কোট) = কোট/ জামা;\r\nTask (তাস্ক) – কার্য;\r\nThickness (থিকনেস) – ঘনত্ব, বেধ;\r\nSomehow (সামহাও) = যে কোন ভাবেই হউক;', 'Pending'),
(172, 3, 2, '2024-01-25', 'zone (জোন) – মণ্ডল;\r\nRefusal (রেফুসাল) = অস্বীকার, প্রত্যাখ্যান;\r\nEstate (এস্টেট) = স্থাবর বা অস্থাবর সম্পত্তি;\r\nInto (ইনটু) = মধ্যে;\r\nDistance (ডিসটেন্স) = দূরত্ব;\r\nIntroduce (ইন্ট্রোডিউস) = প্রবেশ করানো;\r\nNeighbor (নেইবার) = প্রতিবেশী;\r\nCoach (কোচ) = কো', 'Pending'),
(173, 3, 2, '2024-01-26', 'Sit (সিট) = বসা;\r\nMouth (মাউথ) = মুখ;\r\nPossibility (পসিবিলিটি) = সম্ভাবনা;\r\nJump (জাম্প) = ঝাঁপ দাও;\r\nCandy (ক্যান্ডি) = ক্যান্ডি, মিছরি;\r\nwhole (হোল) – সমগ্র;\r\nPresence (প্রেসেন্স) = উপস্থিতি;\r\nEssential (এসএনশিয়াল) = অপরিহার্য;', 'Pending'),
(174, 3, 2, '2024-01-27', 'Knee (নি) = হাঁটু;\r\nWash (ওয়াশ) – ধোয়া;\r\nLaw (ল) = আইন;\r\nColumn (কালাম) = স্তম্ভ;\r\nLaugh (লাফ) = হাসি;\r\nUnexpected (আনেক্সপেক্টেড) – অপ্রত্যাশিত;\r\nInvestigation (ইনভেস্টিগেশন) = তদন্ত;\r\nStatement (স্টেটমেন্ট) = বিবৃতি;', 'Pending'),
(175, 3, 2, '2024-01-28', 'Cupboard (কাপবোর্ড) = আলমারি;\r\nThursday (থার্সডে) – বৃহস্পতিবার;\r\nyawn (ইয়াওন) –  হাই তোলা;\r\nEquipment (ইকুইপমেন্ট) = উপকরণ;\r\nEnquiry (ইনকোয়ারি) = অনুসন্ধান;\r\nActual (অ্যাকচুয়াল) = যথার্থ;\r\nConclude (কনক্লুড ) = শেষ করা;', 'Pending'),
(176, 3, 2, '2024-01-29', 'Cheese (চীজ) = পনির;\r\nAlong (এলং) = বরাবর;\r\nFoot (ফুট) = পা;\r\nNight (নাইট) = রাত;\r\nInfection (ইনফেকশন) = সংক্রমণ;\r\nStay (স্টে) = থাকা;\r\nQuote (কৌট) = উদ্ধৃতি;\r\nDeposit (ডিপোজিট) = আমানত;', 'Pending'),
(177, 3, 2, '2024-01-30', 'March ( মার্চ ) = মার্চ;\r\nSpiritual (স্পিরিচুয়াল) = আধ্যাত্মিক;\r\nCorner (কর্নার) = কোণা;\r\nExpense (এক্সপেন্স) = ব্যয়;\r\nSenator (সিনেটর) = সিনেটার;\r\nGold (গোল্ড) = স্বর্ণ;\r\nPremises (প্রিমিসেস) = প্রাঙ্গনে;\r\nAbsolutely (অবসোলুটলি) = সম্পূর্ণরূপে;', 'Pending'),
(178, 3, 2, '2024-01-31', 'Exhibit (এক্সহিবিট) = প্রদর্শক;\r\nConsideration (কন্সিডারেশন) = বিবেচনা;\r\nBase ( বেস) = ভিত্তি;\r\nPowerful (পাওয়ারফুল) = ক্ষমতাশালী;\r\nSafe (সেফ) = নিরাপদ;\r\nModern (মডার্ন) = আধুনিক;\r\nClever (ক্লেভার) = চালাক;\r\nSomehow (সামহাও) = যে কোন ভাবেই হউক;', 'Pending'),
(179, 3, 2, '2024-02-01', 'Proposal (প্রপোসাল) = প্রস্তাব;\r\nUpwards (আপওয়ার্ডস) – ঊর্ধ্বে, উপরের অংশে;\r\nwithout (উইদাউট) – ছাড়া, ব্যতীত;\r\nVisit (ভিসিট) – পরিদর্শন করা;\r\nWarn (ওয়ার্ন) – সতর্ক করা;\r\nPost (পোস্ট) = পোস্ট;\r\nExpand (এক্সপ্যান্ড) = বিস্তৃত করা;\r\nDominate (ডমিনেট) =কর্তৃ', 'Pending'),
(180, 3, 2, '2024-02-02', 'Mostly (মোস্টলী) = অধিকাংশ ক্ষেত্রে;\r\nPalace (প্যালেস) = প্রাসাদ;\r\nWay (ওয়ে) – পথ;\r\nLeast (লিস্ট) = ন্যুনতম;\r\nRaw (র) = কাঁচা, অমিশ্রণ;\r\nPreparation (প্রিপারেশন) = প্রস্তুতি;\r\nConfirm (কন্ফার্ম) = নিশ্চিত করা;', 'Pending'),
(181, 3, 2, '2024-02-03', 'Resident (রেসিডেন্স) = বাসিন্দা;\r\nJunior (জুনিয়র) = ছোট;\r\nAware (এওয়ার ) = সচেতন;\r\nJam (জ্যাম) = জ্যাম;\r\nManager (ম্যানেজার) = ম্যানেজার;\r\nCeiling (সিলিং) = ছাদ;\r\nLanguage (ল্যাঙ্গুয়েজ) = ভাষা;\r\nSeat (সিট) = আসন;\r\nDisagree (ডিসেগ্রি) = অসম্মত;', 'Pending'),
(182, 3, 2, '2024-02-04', 'Van (ভ্যান) – গাড়ী;\r\nManufacture (ম্যানুফ্র্যাকচার) = উৎপাদন;\r\nRealistic (রিয়ালিস্টিক) = বাস্তববাদী;\r\nGuess (গেস) = অনুমান, ধারণা;\r\nFarther (ফারদার) = অধিকতর;\r\nOutline (আউটলাইন) = রূপরেখা;\r\nAlternative (অল্টারনেটিভ) = বিকল্প;\r\nFilm (ফিল্ম) = চলচ্চিত্র;', 'Pending'),
(183, 3, 2, '2024-02-05', 'Forest (ফরেস্ট) = বন, জংগল;\r\nAlcoholic (আলকোহলিক) = মদ্যপ;\r\nAnyway (এনিওয়ে) = যাই হোক;\r\nInvitation (ইনভিটেশন) = আমন্ত্রণ;\r\nCompetitive (কম্পিটিটিভ) = প্রতিযোগিতামূলক;\r\nwife (ওয়াইফ) – স্ত্রী;\r\nSting  (স্টিং) – দংশন;', 'Pending'),
(184, 3, 2, '2024-02-06', 'Sometimes (সামটাইমস) = কখনও কখনও;\r\nDisabled (ডিসএবল) = অক্ষম;\r\nEngineer (ইঞ্জিনিয়ার) = প্রকৌশলী;\r\nFlag (ফ্ল্যাগ) = পতাকা;\r\nAction (অ্যাকশন) = কর্ম;\r\nyear (ইয়ার) – বছর;\r\nJudge (জাজ) = বিচারক;\r\nCrisis (ক্রাইসিস) = সঙ্কট;', 'Pending'),
(185, 3, 2, '2024-02-07', 'Disaster (ডিসাস্টার) = বিপর্যয়;\r\nPublic (পাবলিক) = প্রকাশ্য;\r\nSuggest (সাজেস্ট) – সুপারিশ;\r\nTransfer (ট্রান্সফার) – হস্তান্তর, স্থানান্তরণ;\r\nGun (গান) = বন্দুক;\r\nPreference (প্রিফারেন্স) = পক্ষপাত, অনুরক্তি;\r\nTV (টিভি) – টেলিভিশন;\r\nLikely (লাইকলি) = সম্ভ', 'Pending'),
(186, 3, 2, '2024-02-08', 'Effect (ইফেক্ট) = প্রভাব;\r\nNumber (নাম্বার) = সংখ্যা;\r\nUnemployed (আনএমপ্লয়েড) – বেকার;\r\nShallow (শেলো) = অগভীর;\r\nMental (মেন্টাল) = মানসিক;\r\nRepresentative (রিপ্রেসেন্টেটিভ) = প্রতিনিধি;\r\nMilk (মিল্ক) = দুধ;\r\nFame (ফেম) = খ্যাতি;', 'Pending'),
(187, 3, 2, '2024-02-09', 'Moreover (মোরেভার) =  অধিকন্তু;\r\nGasoline (গ্যাসোলিন) =পেট্রল;\r\nCommitment (কমিটমেন্ট) = প্রতিশ্রুতি;\r\nThumb (থাম্ব) – অঙ্গুষ্ঠ, হাতের বুড়ো আঙ্গুলি;\r\nAgo (এগো ) = পূর্বে;\r\nInclude (ইনক্লুড) = অন্তর্ভুক্ত করা;\r\nwindow (উইন্ডো) – জানলা;\r\nword (ওয়ার্ড) – শব্', 'Pending'),
(188, 3, 2, '2024-02-10', 'Dance (ডান্স) = নাচ;\r\nTransparent (ট্রান্সপারেন্ট) – স্বচ্ছ;\r\nAcademic (একাডেমিক) = কেতাবি;\r\nFork (ফর্ক) = কাঁটাচামচ;\r\nWeekly (উইকলি) – সাপ্তাহিক;\r\nBid (বিড) = নিলাম ডাকা;\r\nPatience (পেশেন্স) = ধৈর্য;\r\nScare (স্কেয়ার) = ভীতি;\r\n', 'Pending'),
(189, 3, 2, '2024-02-11', 'Domestic (ডোমেস্টিক) = গার্হস্থ্য/ পারিবারিক;\r\nPath (পাথ) = পথ, রাস্তা;\r\nill (ইল) = অসুস্থ;\r\nTable (টেবিল) – টেবিল, ছক;\r\nDecision ( ডিসিশন ) = সিদ্ধান্ত;\r\nDirection ( ডাইরেকশন ) = অভিমুখ;\r\nFear( ফিয়ার ) = ভয়;\r\nMuscle ( মাসেল ) = পেশী;', 'Pending'),
(190, 3, 2, '2024-02-12', 'Global ( গ্লোবাল ) = বিশ্বব্যাপী;\r\nAmount ( এমাউন্ট ) = পরিমাণ;\r\nAsk ( আস্ক ) = জিজ্ঞাসা করা;\r\nElectronic ( ইলেকট্রনিক ) = বৈদ্যুতিক;\r\nStress ( স্ট্রেস ) – জোর;\r\nPoisonous( প্রিসোনাস ) = বিষাক্ত;\r\nLot  (লট ) = অনেক;\r\nKeen ( কিন ) = উৎসাহী;', 'Pending'),
(191, 3, 2, '2024-02-13', 'Evil ( ইভিল ) = মন্দ;\r\nAttend ( এটেন্ড ) = পরিচর্যা করা;\r\nOffice (অফিস ) = দপ্তর, অফিস;\r\nAlcohol ( এলকোহল ) = মদ্য;\r\nBlue ( ব্লু ) = নীল;\r\nwinner ( উইনার ) – বিজয়ী;\r\nBake ( বেক ) = সেকা;\r\nSwallow ( শ্যালো ) – গেলা, গলাধ করণ করা;', 'Pending'),
(192, 3, 2, '2024-02-14', 'Allow ( এলাও ) = মানিয়া লত্তয়া;\r\nOccur ( অকার ) = ঘটা;\r\nHoliday ( হলিডে ) = ছুটির দিন;\r\nChicken ( চিকেন ) = মুরগির মাংস;\r\nFree ( ফ্রি ) = বিনামূল্যে;\r\nAcid ( অ্যাসিড ) = অ্যাসিড, অম্ল;\r\nExamine ( এক্সামিন ) =পরীক্ষা করা;\r\nState ( স্টেট ) = রাষ্ট্র;', 'Pending'),
(193, 3, 2, '2024-01-10', 'Nowhere (নাওহয়ার) = কোথাও;\r\nPlenty (প্লেনটি) = প্রচুর;\r\nPig (পিগ) = শূকর;\r\nArrange (এরেঞ্জ) = ব্যবস্থা করা;\r\nBound (বাউন্ড) = আবদ্ধ;\r\nHome (হোম) = বাড়ি;\r\nProper (প্রোপার) = সঠিক;\r\nCatch (ক্যাচ) = ধরা;\r\n', 'Pending'),
(194, 3, 2, '2024-01-10', 'Interpret (ইন্টারপ্রেট) = ব্যাখ্যা করা;\r\nPill (পিল) = পিল;\r\nwidth (ওয়াইড) = প্রস্থ;\r\nCover (কভার) = আবরণ;\r\nNor (নর) = নয়, না;\r\nWeigh (ওয়েট) = ওজন করা;\r\nSnow (স্নো) = তুষার;\r\nFall (ফল) = পতন ঘটা;\r\n', 'Pending'),
(195, 3, 2, '2024-01-10', 'Slide ( স্লাইড ) = পথ; \r\nPiano ( পিয়ানো ) = পিয়ানো; \r\nZero ( জিরো ) – শূন্য; \r\nDirt ( ডার্ট ) = ময়লা; \r\nAvoid ( এভোয়েড ) = এড়াতে; \r\nMine ( মাইন ) = খনি; \r\nStrict ( স্টিক ) – যথাযথ; \r\nLane ( লেন ) = গলি;\r\n', 'Pending'),
(196, 3, 2, '2024-01-10', 'Education ( এডুকেশন ) = শিক্ষা;\r\nAngry ( অ্যাংরি ) = রাগী;\r\nLeg ( লেগ ) = পা;\r\nEdition ( এডিশন ) = সংস্করণ;\r\nReduction ( রিডাকশন ) = কমানো;\r\nPanel ( প্যানেল ) = প্যানেল, নামসূচি;\r\nBush ( বুশ ) = ঝোপ;\r\nEdge ( এডজ ) = প্রান্ত;\r\n', 'Pending'),
(197, 3, 2, '2024-01-10', 'Removal ( রিমোভাল ) = অপসারণ;\r\nRest ( রেস্ট ) = বিশ্রাম;\r\nFrame ( ফ্রেম ) = গঠন;\r\nConfuse ( কনফুজ ) = বিশৃঙ্খল করা;\r\nReputation ( রেপুটেশন ) = খ্যাতি;\r\nCheat ( চিট ) = প্রতারণা;\r\nPublish ( পাবলিশ ) = প্রকাশ করা;\r\nBuy ( বায় ) = কেনা;\r\n', 'Pending'),
(199, 3, 2, '2024-01-15', 'Kind (কাইন্ড ) = প্রকার, টাইপ;\r\nFailure ( ফেইলর ) = ব্যর্থতা;\r\nProtection ( প্রটেকশন ) = সুরক্ষা;\r\nInfectious ( ইফেক্টিয়াস ) = সংক্রামক;\r\nDue ( ডিউ ) = বাকি;\r\nWest ( ওয়েস্ট ) – পশ্চিম;\r\nAcross ( এক্রোস ) =সম্মুখীন;\r\n', 'Pending'),
(200, 3, 2, '2024-01-15', 'Improve ( ইম্প্রুভ ) = উন্নত করা;\r\nResponsibility ( রেসপনসিবিলিটি ) = দায়িত্ব;\r\nFamous ( ফেমাস ) = বিখ্যাত;\r\nMurder (মার্ডার ) = হত্যা;\r\nGrain ( গ্রেইন ) =শস্য;\r\nNurse ( নার্স ) =নার্স, পরিষেবক;\r\nAccess ( একসেস ) = প্রবেশ;\r\nSouthern ( সাউথটান ) = দক্ষিণা', 'Pending'),
(201, 3, 2, '2024-01-15', 'Govern ( গভার্ন ) =শাসন করা;\r\nBeautiful ( বিউটিফুল ) = সুন্দর;\r\nBuyer (বায়ার ) = ক্রেতা;\r\nMotorcycle ( মোটরসাইকেল ) = মোটরসাইকেল;\r\nSuffer (সাফার ) – ভোগা;\r\nHomework ( হোমওয়ার্ক ) = বাড়ির কাজ;\r\nFly (ফ্লাই ) = মাছি;\r\nSkirt (স্কার্ট ) = স্কার্ট;\r\n', 'Pending'),
(202, 3, 2, '2024-01-15', 'Honest (অনেস্ট) = ন্যায়বান;\r\nTravel (ট্রাভেল) – ভ্রমণ;\r\nGrandfather (n)= দাদা , পিতামহ;\r\nComplicate (কমপ্লিকেট) = জটিল;\r\nApprove (এপ্রভ) = অনুমোদন করা;\r\nMeal (মিল) = খাবার;\r\nEncounter (এনকাউন্টার) = সম্মুখীন হওয়া;\r\nImport (ইম্পোর্ট) = আমদানি;', 'Pending'),
(203, 3, 2, '2024-01-20', 'Below (বিলো) = নিচে;\r\nTimetable (টাইমটেবিল) – সময়নিরুপণতালিকা;\r\nStory (স্টোরি) – গল্প;\r\nSurname (সারনেম) – পদবি;\r\nCable (কেবল) = কেবল;\r\nRain (রেইন) = বৃষ্টি;\r\nyourself (উওরসেলফ) – তুমিই, তুমি নিজেকে;\r\nPossible (পসিবল) = সম্ভব;', 'Pending'),
(204, 3, 2, '2024-01-20', 'Paint (পেইন্ট) = রং;\r\nEarn (আর্ন) = আয় করা;\r\nDivorce (ডিভোর্স) = বিবাহবিচ্ছেদ;\r\nyard (ইয়ার্ড) – উঠান;\r\nyet (ইয়েট) – অথচ,  এখনো;\r\nhello ( হেলো) = ওহে ;\r\nEconomy (ইকোনমি) = অর্থনীতি;\r\nAugust (আগস্ট) = অগাস্ট;', 'Pending'),
(205, 3, 2, '2024-01-20', 'Launch (লঞ্চ) = শুরু করা;\r\nBear (বিয়ার) = সহ্য করা / ভালুক;\r\nArt (আর্ট) = শিল্প;\r\nUncomfortable (আনকমফোর্টেবল) – অস্বস্তিকর;\r\nBelief (বিলিফ) = বিশ্বাস;\r\nAutomatic (অটোমেটিক) = স্বয়ংক্রিয়;\r\nBelong (বিলং) = অন্তর্গত;\r\nDrug (ড্রাগ) = ঔষধ;', 'Pending'),
(206, 3, 2, '2024-01-16', 'Fortune (ফরচুন) = ভাগ্য;\r\nTank (ট্যাংক) – ট্যাঙ্ক, পুকুর;\r\nSomething (সামথিং) = কিছু;\r\nIntelligence (ইন্টেলিজেন্স) = বুদ্ধিমত্তা;\r\nRegular (রেগুলার) = নিয়মিত;\r\nUnderground (আন্ডারগ্রউন্ড) – ভূগর্ভস্থ;\r\nValue (ভ্যালু) – মূল্য;\r\nPrisoner (প্রিসনার) = বন্দী', 'Sent'),
(207, 3, 2, '2024-01-24', '\r\nAcknowledge (একনলেজ) = স্বীকার করা;\r\nSadness (স্যাডনেস) = বিষণ্ণতা;\r\nmeet up (মিটআপ ) = দেখা করা;\r\nCoat (কোট) = কোট/ জামা;\r\nTask (তাস্ক) – কার্য;\r\nThickness (থিকনেস) – ঘনত্ব, বেধ;\r\nSomehow (সামহাও) = যে কোন ভাবেই হউক;', 'Pending'),
(208, 3, 2, '2024-01-24', 'zone (জোন) – মণ্ডল;\r\nRefusal (রেফুসাল) = অস্বীকার, প্রত্যাখ্যান;\r\nEstate (এস্টেট) = স্থাবর বা অস্থাবর সম্পত্তি;\r\nInto (ইনটু) = মধ্যে;\r\nDistance (ডিসটেন্স) = দূরত্ব;\r\nIntroduce (ইন্ট্রোডিউস) = প্রবেশ করানো;\r\nNeighbor (নেইবার) = প্রতিবেশী;\r\nCoach (কোচ) = কো', 'Pending'),
(209, 3, 2, '2024-01-24', 'Sit (সিট) = বসা;\r\nMouth (মাউথ) = মুখ;\r\nPossibility (পসিবিলিটি) = সম্ভাবনা;\r\nJump (জাম্প) = ঝাঁপ দাও;\r\nCandy (ক্যান্ডি) = ক্যান্ডি, মিছরি;\r\nwhole (হোল) – সমগ্র;\r\nPresence (প্রেসেন্স) = উপস্থিতি;\r\nEssential (এসএনশিয়াল) = অপরিহার্য;', 'Pending'),
(210, 3, 2, '2024-01-24', 'Knee (নি) = হাঁটু;\r\nWash (ওয়াশ) – ধোয়া;\r\nLaw (ল) = আইন;\r\nColumn (কালাম) = স্তম্ভ;\r\nLaugh (লাফ) = হাসি;\r\nUnexpected (আনেক্সপেক্টেড) – অপ্রত্যাশিত;\r\nInvestigation (ইনভেস্টিগেশন) = তদন্ত;\r\nStatement (স্টেটমেন্ট) = বিবৃতি;', 'Pending'),
(211, 3, 2, '2024-01-28', 'Cupboard (কাপবোর্ড) = আলমারি;\r\nThursday (থার্সডে) – বৃহস্পতিবার;\r\nyawn (ইয়াওন) –  হাই তোলা;\r\nEquipment (ইকুইপমেন্ট) = উপকরণ;\r\nEnquiry (ইনকোয়ারি) = অনুসন্ধান;\r\nActual (অ্যাকচুয়াল) = যথার্থ;\r\nConclude (কনক্লুড ) = শেষ করা;', 'Pending'),
(212, 3, 2, '2024-01-28', 'Cheese (চীজ) = পনির;\r\nAlong (এলং) = বরাবর;\r\nFoot (ফুট) = পা;\r\nNight (নাইট) = রাত;\r\nInfection (ইনফেকশন) = সংক্রমণ;\r\nStay (স্টে) = থাকা;\r\nQuote (কৌট) = উদ্ধৃতি;\r\nDeposit (ডিপোজিট) = আমানত;', 'Pending'),
(213, 3, 2, '2024-01-28', 'March ( মার্চ ) = মার্চ;\r\nSpiritual (স্পিরিচুয়াল) = আধ্যাত্মিক;\r\nCorner (কর্নার) = কোণা;\r\nExpense (এক্সপেন্স) = ব্যয়;\r\nSenator (সিনেটর) = সিনেটার;\r\nGold (গোল্ড) = স্বর্ণ;\r\nPremises (প্রিমিসেস) = প্রাঙ্গনে;\r\nAbsolutely (অবসোলুটলি) = সম্পূর্ণরূপে;', 'Pending'),
(214, 3, 2, '2024-01-28', 'Exhibit (এক্সহিবিট) = প্রদর্শক;\r\nConsideration (কন্সিডারেশন) = বিবেচনা;\r\nBase ( বেস) = ভিত্তি;\r\nPowerful (পাওয়ারফুল) = ক্ষমতাশালী;\r\nSafe (সেফ) = নিরাপদ;\r\nModern (মডার্ন) = আধুনিক;\r\nClever (ক্লেভার) = চালাক;\r\nSomehow (সামহাও) = যে কোন ভাবেই হউক;', 'Pending'),
(215, 3, 2, '2024-01-28', 'Proposal (প্রপোসাল) = প্রস্তাব;\r\nUpwards (আপওয়ার্ডস) – ঊর্ধ্বে, উপরের অংশে;\r\nwithout (উইদাউট) – ছাড়া, ব্যতীত;\r\nVisit (ভিসিট) – পরিদর্শন করা;\r\nWarn (ওয়ার্ন) – সতর্ক করা;\r\nPost (পোস্ট) = পোস্ট;\r\nExpand (এক্সপ্যান্ড) = বিস্তৃত করা;\r\nDominate (ডমিনেট) =কর্তৃ', 'Pending'),
(216, 3, 2, '2024-01-28', 'Mostly (মোস্টলী) = অধিকাংশ ক্ষেত্রে;\r\nPalace (প্যালেস) = প্রাসাদ;\r\nWay (ওয়ে) – পথ;\r\nLeast (লিস্ট) = ন্যুনতম;\r\nRaw (র) = কাঁচা, অমিশ্রণ;\r\nPreparation (প্রিপারেশন) = প্রস্তুতি;\r\nConfirm (কন্ফার্ম) = নিশ্চিত করা;', 'Pending'),
(217, 3, 2, '2024-02-03', 'Resident (রেসিডেন্স) = বাসিন্দা;\r\nJunior (জুনিয়র) = ছোট;\r\nAware (এওয়ার ) = সচেতন;\r\nJam (জ্যাম) = জ্যাম;\r\nManager (ম্যানেজার) = ম্যানেজার;\r\nCeiling (সিলিং) = ছাদ;\r\nLanguage (ল্যাঙ্গুয়েজ) = ভাষা;\r\nSeat (সিট) = আসন;\r\nDisagree (ডিসেগ্রি) = অসম্মত;', 'Pending'),
(218, 3, 2, '2024-02-03', 'Van (ভ্যান) – গাড়ী;\r\nManufacture (ম্যানুফ্র্যাকচার) = উৎপাদন;\r\nRealistic (রিয়ালিস্টিক) = বাস্তববাদী;\r\nGuess (গেস) = অনুমান, ধারণা;\r\nFarther (ফারদার) = অধিকতর;\r\nOutline (আউটলাইন) = রূপরেখা;\r\nAlternative (অল্টারনেটিভ) = বিকল্প;\r\nFilm (ফিল্ম) = চলচ্চিত্র;', 'Pending'),
(219, 3, 2, '2024-02-03', 'Forest (ফরেস্ট) = বন, জংগল;\r\nAlcoholic (আলকোহলিক) = মদ্যপ;\r\nAnyway (এনিওয়ে) = যাই হোক;\r\nInvitation (ইনভিটেশন) = আমন্ত্রণ;\r\nCompetitive (কম্পিটিটিভ) = প্রতিযোগিতামূলক;\r\nwife (ওয়াইফ) – স্ত্রী;\r\nSting  (স্টিং) – দংশন;', 'Pending'),
(220, 3, 2, '2024-02-03', 'Sometimes (সামটাইমস) = কখনও কখনও;\r\nDisabled (ডিসএবল) = অক্ষম;\r\nEngineer (ইঞ্জিনিয়ার) = প্রকৌশলী;\r\nFlag (ফ্ল্যাগ) = পতাকা;\r\nAction (অ্যাকশন) = কর্ম;\r\nyear (ইয়ার) – বছর;\r\nJudge (জাজ) = বিচারক;\r\nCrisis (ক্রাইসিস) = সঙ্কট;', 'Pending'),
(221, 3, 2, '2024-02-03', 'Disaster (ডিসাস্টার) = বিপর্যয়;\r\nPublic (পাবলিক) = প্রকাশ্য;\r\nSuggest (সাজেস্ট) – সুপারিশ;\r\nTransfer (ট্রান্সফার) – হস্তান্তর, স্থানান্তরণ;\r\nGun (গান) = বন্দুক;\r\nPreference (প্রিফারেন্স) = পক্ষপাত, অনুরক্তি;\r\nTV (টিভি) – টেলিভিশন;\r\nLikely (লাইকলি) = সম্ভ', 'Pending'),
(222, 3, 2, '2024-02-08', 'Effect (ইফেক্ট) = প্রভাব;\r\nNumber (নাম্বার) = সংখ্যা;\r\nUnemployed (আনএমপ্লয়েড) – বেকার;\r\nShallow (শেলো) = অগভীর;\r\nMental (মেন্টাল) = মানসিক;\r\nRepresentative (রিপ্রেসেন্টেটিভ) = প্রতিনিধি;\r\nMilk (মিল্ক) = দুধ;\r\nFame (ফেম) = খ্যাতি;', 'Pending'),
(223, 3, 2, '2024-02-08', 'Moreover (মোরেভার) =  অধিকন্তু;\r\nGasoline (গ্যাসোলিন) =পেট্রল;\r\nCommitment (কমিটমেন্ট) = প্রতিশ্রুতি;\r\nThumb (থাম্ব) – অঙ্গুষ্ঠ, হাতের বুড়ো আঙ্গুলি;\r\nAgo (এগো ) = পূর্বে;\r\nInclude (ইনক্লুড) = অন্তর্ভুক্ত করা;\r\nwindow (উইন্ডো) – জানলা;\r\nword (ওয়ার্ড) – শব্', 'Pending'),
(224, 3, 2, '2024-02-08', 'Dance (ডান্স) = নাচ;\r\nTransparent (ট্রান্সপারেন্ট) – স্বচ্ছ;\r\nAcademic (একাডেমিক) = কেতাবি;\r\nFork (ফর্ক) = কাঁটাচামচ;\r\nWeekly (উইকলি) – সাপ্তাহিক;\r\nBid (বিড) = নিলাম ডাকা;\r\nPatience (পেশেন্স) = ধৈর্য;\r\nScare (স্কেয়ার) = ভীতি;\r\n', 'Pending'),
(225, 3, 2, '2024-02-08', 'Domestic (ডোমেস্টিক) = গার্হস্থ্য/ পারিবারিক;\r\nPath (পাথ) = পথ, রাস্তা;\r\nill (ইল) = অসুস্থ;\r\nTable (টেবিল) – টেবিল, ছক;\r\nDecision ( ডিসিশন ) = সিদ্ধান্ত;\r\nDirection ( ডাইরেকশন ) = অভিমুখ;\r\nFear( ফিয়ার ) = ভয়;\r\nMuscle ( মাসেল ) = পেশী;', 'Pending'),
(226, 3, 2, '2024-02-08', 'Global ( গ্লোবাল ) = বিশ্বব্যাপী;\r\nAmount ( এমাউন্ট ) = পরিমাণ;\r\nAsk ( আস্ক ) = জিজ্ঞাসা করা;\r\nElectronic ( ইলেকট্রনিক ) = বৈদ্যুতিক;\r\nStress ( স্ট্রেস ) – জোর;\r\nPoisonous( প্রিসোনাস ) = বিষাক্ত;\r\nLot  (লট ) = অনেক;\r\nKeen ( কিন ) = উৎসাহী;', 'Pending'),
(227, 3, 2, '2024-02-13', 'Evil ( ইভিল ) = মন্দ;\r\nAttend ( এটেন্ড ) = পরিচর্যা করা;\r\nOffice (অফিস ) = দপ্তর, অফিস;\r\nAlcohol ( এলকোহল ) = মদ্য;\r\nBlue ( ব্লু ) = নীল;\r\nwinner ( উইনার ) – বিজয়ী;\r\nBake ( বেক ) = সেকা;\r\nSwallow ( শ্যালো ) – গেলা, গলাধ করণ করা;', 'Pending'),
(228, 3, 2, '2024-02-14', 'Allow ( এলাও ) = মানিয়া লত্তয়া;\r\nOccur ( অকার ) = ঘটা;\r\nHoliday ( হলিডে ) = ছুটির দিন;\r\nChicken ( চিকেন ) = মুরগির মাংস;\r\nFree ( ফ্রি ) = বিনামূল্যে;\r\nAcid ( অ্যাসিড ) = অ্যাসিড, অম্ল;\r\nExamine ( এক্সামিন ) =পরীক্ষা করা;\r\nState ( স্টেট ) = রাষ্ট্র;', 'Pending'),
(229, 3, 2, '2024-01-16', 'fdfdfdfdfffffff', 'Pending'),
(230, 3, 2, '2024-01-18', 'fdfdfdfdfdf', 'Pending'),
(231, 4, 2, '2024-01-10', 'Nowhere (নাওহয়ার) = কোথাও;\r\nPlenty (প্লেনটি) = প্রচুর;\r\nPig (পিগ) = শূকর;\r\nArrange (এরেঞ্জ) = ব্যবস্থা করা;\r\nBound (বাউন্ড) = আবদ্ধ;\r\nHome (হোম) = বাড়ি;\r\nProper (প্রোপার) = সঠিক;\r\nCatch (ক্যাচ) = ধরা;\r\n', 'Pending'),
(232, 4, 2, '2024-01-10', 'Interpret (ইন্টারপ্রেট) = ব্যাখ্যা করা;\r\nPill (পিল) = পিল;\r\nwidth (ওয়াইড) = প্রস্থ;\r\nCover (কভার) = আবরণ;\r\nNor (নর) = নয়, না;\r\nWeigh (ওয়েট) = ওজন করা;\r\nSnow (স্নো) = তুষার;\r\nFall (ফল) = পতন ঘটা;\r\n', 'Pending'),
(233, 4, 2, '2024-01-10', 'Slide ( স্লাইড ) = পথ; \r\nPiano ( পিয়ানো ) = পিয়ানো; \r\nZero ( জিরো ) – শূন্য; \r\nDirt ( ডার্ট ) = ময়লা; \r\nAvoid ( এভোয়েড ) = এড়াতে; \r\nMine ( মাইন ) = খনি; \r\nStrict ( স্টিক ) – যথাযথ; \r\nLane ( লেন ) = গলি;\r\n', 'Pending'),
(234, 4, 2, '2024-01-10', 'Education ( এডুকেশন ) = শিক্ষা;\r\nAngry ( অ্যাংরি ) = রাগী;\r\nLeg ( লেগ ) = পা;\r\nEdition ( এডিশন ) = সংস্করণ;\r\nReduction ( রিডাকশন ) = কমানো;\r\nPanel ( প্যানেল ) = প্যানেল, নামসূচি;\r\nBush ( বুশ ) = ঝোপ;\r\nEdge ( এডজ ) = প্রান্ত;\r\n', 'Pending'),
(235, 4, 2, '2024-01-10', 'Removal ( রিমোভাল ) = অপসারণ;\r\nRest ( রেস্ট ) = বিশ্রাম;\r\nFrame ( ফ্রেম ) = গঠন;\r\nConfuse ( কনফুজ ) = বিশৃঙ্খল করা;\r\nReputation ( রেপুটেশন ) = খ্যাতি;\r\nCheat ( চিট ) = প্রতারণা;\r\nPublish ( পাবলিশ ) = প্রকাশ করা;\r\nBuy ( বায় ) = কেনা;\r\n', 'Pending'),
(236, 4, 2, '2024-01-15', 'Trap ( ট্রেপ ) – ফাঁদ;\r\nUgly ( আগলি ) – কুশ্রী;\r\nAbility ( এবিলিটি ) = দক্ষতা;\r\nRegister ( রেজিস্টার ) = নিবন্ধনS;\r\nMap ( ম্যাপ ) = মানচিত্র;\r\nTool ( টুল ) – টুল;\r\nOur (আওয়ার ) = আমাদের;\r\nSuitable (সুইট্যাবল) – উপযুক্ত;\r\n', 'Pending'),
(237, 4, 2, '2024-01-15', 'Kind (কাইন্ড ) = প্রকার, টাইপ;\r\nFailure ( ফেইলর ) = ব্যর্থতা;\r\nProtection ( প্রটেকশন ) = সুরক্ষা;\r\nInfectious ( ইফেক্টিয়াস ) = সংক্রামক;\r\nDue ( ডিউ ) = বাকি;\r\nWest ( ওয়েস্ট ) – পশ্চিম;\r\nAcross ( এক্রোস ) =সম্মুখীন;\r\n', 'Pending'),
(238, 4, 2, '2024-01-15', 'Improve ( ইম্প্রুভ ) = উন্নত করা;\r\nResponsibility ( রেসপনসিবিলিটি ) = দায়িত্ব;\r\nFamous ( ফেমাস ) = বিখ্যাত;\r\nMurder (মার্ডার ) = হত্যা;\r\nGrain ( গ্রেইন ) =শস্য;\r\nNurse ( নার্স ) =নার্স, পরিষেবক;\r\nAccess ( একসেস ) = প্রবেশ;\r\nSouthern ( সাউথটান ) = দক্ষিণা', 'Pending'),
(239, 4, 2, '2024-01-15', 'Govern ( গভার্ন ) =শাসন করা;\r\nBeautiful ( বিউটিফুল ) = সুন্দর;\r\nBuyer (বায়ার ) = ক্রেতা;\r\nMotorcycle ( মোটরসাইকেল ) = মোটরসাইকেল;\r\nSuffer (সাফার ) – ভোগা;\r\nHomework ( হোমওয়ার্ক ) = বাড়ির কাজ;\r\nFly (ফ্লাই ) = মাছি;\r\nSkirt (স্কার্ট ) = স্কার্ট;\r\n', 'Pending'),
(240, 4, 2, '2024-01-15', 'Honest (অনেস্ট) = ন্যায়বান;\r\nTravel (ট্রাভেল) – ভ্রমণ;\r\nGrandfather (n)= দাদা , পিতামহ;\r\nComplicate (কমপ্লিকেট) = জটিল;\r\nApprove (এপ্রভ) = অনুমোদন করা;\r\nMeal (মিল) = খাবার;\r\nEncounter (এনকাউন্টার) = সম্মুখীন হওয়া;\r\nImport (ইম্পোর্ট) = আমদানি;', 'Pending'),
(241, 4, 2, '2024-01-20', 'Below (বিলো) = নিচে;\r\nTimetable (টাইমটেবিল) – সময়নিরুপণতালিকা;\r\nStory (স্টোরি) – গল্প;\r\nSurname (সারনেম) – পদবি;\r\nCable (কেবল) = কেবল;\r\nRain (রেইন) = বৃষ্টি;\r\nyourself (উওরসেলফ) – তুমিই, তুমি নিজেকে;\r\nPossible (পসিবল) = সম্ভব;', 'Pending'),
(242, 4, 2, '2024-01-20', 'Paint (পেইন্ট) = রং;\r\nEarn (আর্ন) = আয় করা;\r\nDivorce (ডিভোর্স) = বিবাহবিচ্ছেদ;\r\nyard (ইয়ার্ড) – উঠান;\r\nyet (ইয়েট) – অথচ,  এখনো;\r\nhello ( হেলো) = ওহে ;\r\nEconomy (ইকোনমি) = অর্থনীতি;\r\nAugust (আগস্ট) = অগাস্ট;', 'Pending'),
(243, 4, 2, '2024-01-20', 'Launch (লঞ্চ) = শুরু করা;\r\nBear (বিয়ার) = সহ্য করা / ভালুক;\r\nArt (আর্ট) = শিল্প;\r\nUncomfortable (আনকমফোর্টেবল) – অস্বস্তিকর;\r\nBelief (বিলিফ) = বিশ্বাস;\r\nAutomatic (অটোমেটিক) = স্বয়ংক্রিয়;\r\nBelong (বিলং) = অন্তর্গত;\r\nDrug (ড্রাগ) = ঔষধ;', 'Pending'),
(244, 4, 2, '2024-01-20', 'Fortune (ফরচুন) = ভাগ্য;\r\nTank (ট্যাংক) – ট্যাঙ্ক, পুকুর;\r\nSomething (সামথিং) = কিছু;\r\nIntelligence (ইন্টেলিজেন্স) = বুদ্ধিমত্তা;\r\nRegular (রেগুলার) = নিয়মিত;\r\nUnderground (আন্ডারগ্রউন্ড) – ভূগর্ভস্থ;\r\nValue (ভ্যালু) – মূল্য;\r\nPrisoner (প্রিসনার) = বন্দী', 'Pending'),
(245, 4, 2, '2024-01-24', '\r\nAcknowledge (একনলেজ) = স্বীকার করা;\r\nSadness (স্যাডনেস) = বিষণ্ণতা;\r\nmeet up (মিটআপ ) = দেখা করা;\r\nCoat (কোট) = কোট/ জামা;\r\nTask (তাস্ক) – কার্য;\r\nThickness (থিকনেস) – ঘনত্ব, বেধ;\r\nSomehow (সামহাও) = যে কোন ভাবেই হউক;', 'Pending'),
(246, 4, 2, '2024-01-24', 'zone (জোন) – মণ্ডল;\r\nRefusal (রেফুসাল) = অস্বীকার, প্রত্যাখ্যান;\r\nEstate (এস্টেট) = স্থাবর বা অস্থাবর সম্পত্তি;\r\nInto (ইনটু) = মধ্যে;\r\nDistance (ডিসটেন্স) = দূরত্ব;\r\nIntroduce (ইন্ট্রোডিউস) = প্রবেশ করানো;\r\nNeighbor (নেইবার) = প্রতিবেশী;\r\nCoach (কোচ) = কো', 'Pending'),
(247, 4, 2, '2024-01-24', 'Sit (সিট) = বসা;\r\nMouth (মাউথ) = মুখ;\r\nPossibility (পসিবিলিটি) = সম্ভাবনা;\r\nJump (জাম্প) = ঝাঁপ দাও;\r\nCandy (ক্যান্ডি) = ক্যান্ডি, মিছরি;\r\nwhole (হোল) – সমগ্র;\r\nPresence (প্রেসেন্স) = উপস্থিতি;\r\nEssential (এসএনশিয়াল) = অপরিহার্য;', 'Pending'),
(248, 4, 2, '2024-01-24', 'Knee (নি) = হাঁটু;\r\nWash (ওয়াশ) – ধোয়া;\r\nLaw (ল) = আইন;\r\nColumn (কালাম) = স্তম্ভ;\r\nLaugh (লাফ) = হাসি;\r\nUnexpected (আনেক্সপেক্টেড) – অপ্রত্যাশিত;\r\nInvestigation (ইনভেস্টিগেশন) = তদন্ত;\r\nStatement (স্টেটমেন্ট) = বিবৃতি;', 'Pending'),
(249, 4, 2, '2024-01-28', 'Cupboard (কাপবোর্ড) = আলমারি;\r\nThursday (থার্সডে) – বৃহস্পতিবার;\r\nyawn (ইয়াওন) –  হাই তোলা;\r\nEquipment (ইকুইপমেন্ট) = উপকরণ;\r\nEnquiry (ইনকোয়ারি) = অনুসন্ধান;\r\nActual (অ্যাকচুয়াল) = যথার্থ;\r\nConclude (কনক্লুড ) = শেষ করা;', 'Pending'),
(250, 4, 2, '2024-01-28', 'Cheese (চীজ) = পনির;\r\nAlong (এলং) = বরাবর;\r\nFoot (ফুট) = পা;\r\nNight (নাইট) = রাত;\r\nInfection (ইনফেকশন) = সংক্রমণ;\r\nStay (স্টে) = থাকা;\r\nQuote (কৌট) = উদ্ধৃতি;\r\nDeposit (ডিপোজিট) = আমানত;', 'Pending'),
(251, 4, 2, '2024-01-28', 'March ( মার্চ ) = মার্চ;\r\nSpiritual (স্পিরিচুয়াল) = আধ্যাত্মিক;\r\nCorner (কর্নার) = কোণা;\r\nExpense (এক্সপেন্স) = ব্যয়;\r\nSenator (সিনেটর) = সিনেটার;\r\nGold (গোল্ড) = স্বর্ণ;\r\nPremises (প্রিমিসেস) = প্রাঙ্গনে;\r\nAbsolutely (অবসোলুটলি) = সম্পূর্ণরূপে;', 'Pending'),
(252, 4, 2, '2024-01-28', 'Exhibit (এক্সহিবিট) = প্রদর্শক;\r\nConsideration (কন্সিডারেশন) = বিবেচনা;\r\nBase ( বেস) = ভিত্তি;\r\nPowerful (পাওয়ারফুল) = ক্ষমতাশালী;\r\nSafe (সেফ) = নিরাপদ;\r\nModern (মডার্ন) = আধুনিক;\r\nClever (ক্লেভার) = চালাক;\r\nSomehow (সামহাও) = যে কোন ভাবেই হউক;', 'Pending'),
(253, 4, 2, '2024-01-28', 'Proposal (প্রপোসাল) = প্রস্তাব;\r\nUpwards (আপওয়ার্ডস) – ঊর্ধ্বে, উপরের অংশে;\r\nwithout (উইদাউট) – ছাড়া, ব্যতীত;\r\nVisit (ভিসিট) – পরিদর্শন করা;\r\nWarn (ওয়ার্ন) – সতর্ক করা;\r\nPost (পোস্ট) = পোস্ট;\r\nExpand (এক্সপ্যান্ড) = বিস্তৃত করা;\r\nDominate (ডমিনেট) =কর্তৃ', 'Pending'),
(254, 4, 2, '2024-01-28', 'Mostly (মোস্টলী) = অধিকাংশ ক্ষেত্রে;\r\nPalace (প্যালেস) = প্রাসাদ;\r\nWay (ওয়ে) – পথ;\r\nLeast (লিস্ট) = ন্যুনতম;\r\nRaw (র) = কাঁচা, অমিশ্রণ;\r\nPreparation (প্রিপারেশন) = প্রস্তুতি;\r\nConfirm (কন্ফার্ম) = নিশ্চিত করা;', 'Pending'),
(255, 4, 2, '2024-02-03', 'Resident (রেসিডেন্স) = বাসিন্দা;\r\nJunior (জুনিয়র) = ছোট;\r\nAware (এওয়ার ) = সচেতন;\r\nJam (জ্যাম) = জ্যাম;\r\nManager (ম্যানেজার) = ম্যানেজার;\r\nCeiling (সিলিং) = ছাদ;\r\nLanguage (ল্যাঙ্গুয়েজ) = ভাষা;\r\nSeat (সিট) = আসন;\r\nDisagree (ডিসেগ্রি) = অসম্মত;', 'Pending'),
(256, 4, 2, '2024-02-03', 'Van (ভ্যান) – গাড়ী;\r\nManufacture (ম্যানুফ্র্যাকচার) = উৎপাদন;\r\nRealistic (রিয়ালিস্টিক) = বাস্তববাদী;\r\nGuess (গেস) = অনুমান, ধারণা;\r\nFarther (ফারদার) = অধিকতর;\r\nOutline (আউটলাইন) = রূপরেখা;\r\nAlternative (অল্টারনেটিভ) = বিকল্প;\r\nFilm (ফিল্ম) = চলচ্চিত্র;', 'Pending'),
(257, 4, 2, '2024-02-03', 'Forest (ফরেস্ট) = বন, জংগল;\r\nAlcoholic (আলকোহলিক) = মদ্যপ;\r\nAnyway (এনিওয়ে) = যাই হোক;\r\nInvitation (ইনভিটেশন) = আমন্ত্রণ;\r\nCompetitive (কম্পিটিটিভ) = প্রতিযোগিতামূলক;\r\nwife (ওয়াইফ) – স্ত্রী;\r\nSting  (স্টিং) – দংশন;', 'Pending'),
(258, 4, 2, '2024-02-03', 'Sometimes (সামটাইমস) = কখনও কখনও;\r\nDisabled (ডিসএবল) = অক্ষম;\r\nEngineer (ইঞ্জিনিয়ার) = প্রকৌশলী;\r\nFlag (ফ্ল্যাগ) = পতাকা;\r\nAction (অ্যাকশন) = কর্ম;\r\nyear (ইয়ার) – বছর;\r\nJudge (জাজ) = বিচারক;\r\nCrisis (ক্রাইসিস) = সঙ্কট;', 'Pending'),
(259, 4, 2, '2024-02-03', 'Disaster (ডিসাস্টার) = বিপর্যয়;\r\nPublic (পাবলিক) = প্রকাশ্য;\r\nSuggest (সাজেস্ট) – সুপারিশ;\r\nTransfer (ট্রান্সফার) – হস্তান্তর, স্থানান্তরণ;\r\nGun (গান) = বন্দুক;\r\nPreference (প্রিফারেন্স) = পক্ষপাত, অনুরক্তি;\r\nTV (টিভি) – টেলিভিশন;\r\nLikely (লাইকলি) = সম্ভ', 'Pending'),
(260, 4, 2, '2024-02-08', 'Effect (ইফেক্ট) = প্রভাব;\r\nNumber (নাম্বার) = সংখ্যা;\r\nUnemployed (আনএমপ্লয়েড) – বেকার;\r\nShallow (শেলো) = অগভীর;\r\nMental (মেন্টাল) = মানসিক;\r\nRepresentative (রিপ্রেসেন্টেটিভ) = প্রতিনিধি;\r\nMilk (মিল্ক) = দুধ;\r\nFame (ফেম) = খ্যাতি;', 'Pending'),
(261, 4, 2, '2024-02-08', 'Moreover (মোরেভার) =  অধিকন্তু;\r\nGasoline (গ্যাসোলিন) =পেট্রল;\r\nCommitment (কমিটমেন্ট) = প্রতিশ্রুতি;\r\nThumb (থাম্ব) – অঙ্গুষ্ঠ, হাতের বুড়ো আঙ্গুলি;\r\nAgo (এগো ) = পূর্বে;\r\nInclude (ইনক্লুড) = অন্তর্ভুক্ত করা;\r\nwindow (উইন্ডো) – জানলা;\r\nword (ওয়ার্ড) – শব্', 'Pending'),
(262, 4, 2, '2024-02-08', 'Dance (ডান্স) = নাচ;\r\nTransparent (ট্রান্সপারেন্ট) – স্বচ্ছ;\r\nAcademic (একাডেমিক) = কেতাবি;\r\nFork (ফর্ক) = কাঁটাচামচ;\r\nWeekly (উইকলি) – সাপ্তাহিক;\r\nBid (বিড) = নিলাম ডাকা;\r\nPatience (পেশেন্স) = ধৈর্য;\r\nScare (স্কেয়ার) = ভীতি;\r\n', 'Pending'),
(263, 4, 2, '2024-02-08', 'Domestic (ডোমেস্টিক) = গার্হস্থ্য/ পারিবারিক;\r\nPath (পাথ) = পথ, রাস্তা;\r\nill (ইল) = অসুস্থ;\r\nTable (টেবিল) – টেবিল, ছক;\r\nDecision ( ডিসিশন ) = সিদ্ধান্ত;\r\nDirection ( ডাইরেকশন ) = অভিমুখ;\r\nFear( ফিয়ার ) = ভয়;\r\nMuscle ( মাসেল ) = পেশী;', 'Pending'),
(264, 4, 2, '2024-02-08', 'Global ( গ্লোবাল ) = বিশ্বব্যাপী;\r\nAmount ( এমাউন্ট ) = পরিমাণ;\r\nAsk ( আস্ক ) = জিজ্ঞাসা করা;\r\nElectronic ( ইলেকট্রনিক ) = বৈদ্যুতিক;\r\nStress ( স্ট্রেস ) – জোর;\r\nPoisonous( প্রিসোনাস ) = বিষাক্ত;\r\nLot  (লট ) = অনেক;\r\nKeen ( কিন ) = উৎসাহী;', 'Pending'),
(265, 4, 2, '2024-02-13', 'Evil ( ইভিল ) = মন্দ;\r\nAttend ( এটেন্ড ) = পরিচর্যা করা;\r\nOffice (অফিস ) = দপ্তর, অফিস;\r\nAlcohol ( এলকোহল ) = মদ্য;\r\nBlue ( ব্লু ) = নীল;\r\nwinner ( উইনার ) – বিজয়ী;\r\nBake ( বেক ) = সেকা;\r\nSwallow ( শ্যালো ) – গেলা, গলাধ করণ করা;', 'Pending'),
(266, 4, 2, '2024-02-14', 'Allow ( এলাও ) = মানিয়া লত্তয়া;\r\nOccur ( অকার ) = ঘটা;\r\nHoliday ( হলিডে ) = ছুটির দিন;\r\nChicken ( চিকেন ) = মুরগির মাংস;\r\nFree ( ফ্রি ) = বিনামূল্যে;\r\nAcid ( অ্যাসিড ) = অ্যাসিড, অম্ল;\r\nExamine ( এক্সামিন ) =পরীক্ষা করা;\r\nState ( স্টেট ) = রাষ্ট্র;', 'Pending'),
(267, 8, 3, '2024-01-16', 'sdsdsdsdsdsdsdsdsdsdsdddddddddddddddddddddddddsdssddddddddddddddddd\ndddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd\ndddddddddddddddddddddddddddd\nddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd\nddddddddddddddddddddddddddddd', 'Pending'),
(268, 8, 3, '2024-01-17', 'cdfdddddddddddddd', 'Pending'),
(269, 8, 3, '2024-01-18', 'dfdfdfdfdfdfdf', 'Pending'),
(270, 8, 3, '2024-01-10', 'Nowhere (নাওহয়ার) = কোথাও;\r\nPlenty (প্লেনটি) = প্রচুর;\r\nPig (পিগ) = শূকর;\r\nArrange (এরেঞ্জ) = ব্যবস্থা করা;\r\nBound (বাউন্ড) = আবদ্ধ;\r\nHome (হোম) = বাড়ি;\r\nProper (প্রোপার) = সঠিক;\r\nCatch (ক্যাচ) = ধরা;\r\n', 'Pending'),
(271, 8, 3, '2024-01-10', 'Interpret (ইন্টারপ্রেট) = ব্যাখ্যা করা;\r\nPill (পিল) = পিল;\r\nwidth (ওয়াইড) = প্রস্থ;\r\nCover (কভার) = আবরণ;\r\nNor (নর) = নয়, না;\r\nWeigh (ওয়েট) = ওজন করা;\r\nSnow (স্নো) = তুষার;\r\nFall (ফল) = পতন ঘটা;\r\n', 'Pending'),
(272, 8, 3, '2024-01-10', 'Slide ( স্লাইড ) = পথ; \r\nPiano ( পিয়ানো ) = পিয়ানো; \r\nZero ( জিরো ) – শূন্য; \r\nDirt ( ডার্ট ) = ময়লা; \r\nAvoid ( এভোয়েড ) = এড়াতে; \r\nMine ( মাইন ) = খনি; \r\nStrict ( স্টিক ) – যথাযথ; \r\nLane ( লেন ) = গলি;\r\n', 'Pending'),
(273, 8, 3, '2024-01-10', 'Education ( এডুকেশন ) = শিক্ষা;\r\nAngry ( অ্যাংরি ) = রাগী;\r\nLeg ( লেগ ) = পা;\r\nEdition ( এডিশন ) = সংস্করণ;\r\nReduction ( রিডাকশন ) = কমানো;\r\nPanel ( প্যানেল ) = প্যানেল, নামসূচি;\r\nBush ( বুশ ) = ঝোপ;\r\nEdge ( এডজ ) = প্রান্ত;\r\n', 'Pending'),
(274, 8, 3, '2024-01-10', 'Removal ( রিমোভাল ) = অপসারণ;\r\nRest ( রেস্ট ) = বিশ্রাম;\r\nFrame ( ফ্রেম ) = গঠন;\r\nConfuse ( কনফুজ ) = বিশৃঙ্খল করা;\r\nReputation ( রেপুটেশন ) = খ্যাতি;\r\nCheat ( চিট ) = প্রতারণা;\r\nPublish ( পাবলিশ ) = প্রকাশ করা;\r\nBuy ( বায় ) = কেনা;\r\n', 'Pending'),
(275, 8, 3, '2024-01-15', 'Trap ( ট্রেপ ) – ফাঁদ;\r\nUgly ( আগলি ) – কুশ্রী;\r\nAbility ( এবিলিটি ) = দক্ষতা;\r\nRegister ( রেজিস্টার ) = নিবন্ধনS;\r\nMap ( ম্যাপ ) = মানচিত্র;\r\nTool ( টুল ) – টুল;\r\nOur (আওয়ার ) = আমাদের;\r\nSuitable (সুইট্যাবল) – উপযুক্ত;\r\n', 'Pending'),
(276, 8, 3, '2024-01-15', 'Kind (কাইন্ড ) = প্রকার, টাইপ;\r\nFailure ( ফেইলর ) = ব্যর্থতা;\r\nProtection ( প্রটেকশন ) = সুরক্ষা;\r\nInfectious ( ইফেক্টিয়াস ) = সংক্রামক;\r\nDue ( ডিউ ) = বাকি;\r\nWest ( ওয়েস্ট ) – পশ্চিম;\r\nAcross ( এক্রোস ) =সম্মুখীন;\r\n', 'Pending'),
(277, 8, 3, '2024-01-15', 'Improve ( ইম্প্রুভ ) = উন্নত করা;\r\nResponsibility ( রেসপনসিবিলিটি ) = দায়িত্ব;\r\nFamous ( ফেমাস ) = বিখ্যাত;\r\nMurder (মার্ডার ) = হত্যা;\r\nGrain ( গ্রেইন ) =শস্য;\r\nNurse ( নার্স ) =নার্স, পরিষেবক;\r\nAccess ( একসেস ) = প্রবেশ;\r\nSouthern ( সাউথটান ) = দক্ষিণা', 'Pending'),
(278, 8, 3, '2024-01-15', 'Govern ( গভার্ন ) =শাসন করা;\r\nBeautiful ( বিউটিফুল ) = সুন্দর;\r\nBuyer (বায়ার ) = ক্রেতা;\r\nMotorcycle ( মোটরসাইকেল ) = মোটরসাইকেল;\r\nSuffer (সাফার ) – ভোগা;\r\nHomework ( হোমওয়ার্ক ) = বাড়ির কাজ;\r\nFly (ফ্লাই ) = মাছি;\r\nSkirt (স্কার্ট ) = স্কার্ট;\r\n', 'Pending'),
(279, 8, 3, '2024-01-15', 'Honest (অনেস্ট) = ন্যায়বান;\r\nTravel (ট্রাভেল) – ভ্রমণ;\r\nGrandfather (n)= দাদা , পিতামহ;\r\nComplicate (কমপ্লিকেট) = জটিল;\r\nApprove (এপ্রভ) = অনুমোদন করা;\r\nMeal (মিল) = খাবার;\r\nEncounter (এনকাউন্টার) = সম্মুখীন হওয়া;\r\nImport (ইম্পোর্ট) = আমদানি;', 'Pending'),
(280, 8, 3, '2024-01-20', 'Below (বিলো) = নিচে;\r\nTimetable (টাইমটেবিল) – সময়নিরুপণতালিকা;\r\nStory (স্টোরি) – গল্প;\r\nSurname (সারনেম) – পদবি;\r\nCable (কেবল) = কেবল;\r\nRain (রেইন) = বৃষ্টি;\r\nyourself (উওরসেলফ) – তুমিই, তুমি নিজেকে;\r\nPossible (পসিবল) = সম্ভব;', 'Pending'),
(281, 8, 3, '2024-01-20', 'Paint (পেইন্ট) = রং;\r\nEarn (আর্ন) = আয় করা;\r\nDivorce (ডিভোর্স) = বিবাহবিচ্ছেদ;\r\nyard (ইয়ার্ড) – উঠান;\r\nyet (ইয়েট) – অথচ,  এখনো;\r\nhello ( হেলো) = ওহে ;\r\nEconomy (ইকোনমি) = অর্থনীতি;\r\nAugust (আগস্ট) = অগাস্ট;', 'Pending'),
(282, 8, 3, '2024-01-20', 'Launch (লঞ্চ) = শুরু করা;\r\nBear (বিয়ার) = সহ্য করা / ভালুক;\r\nArt (আর্ট) = শিল্প;\r\nUncomfortable (আনকমফোর্টেবল) – অস্বস্তিকর;\r\nBelief (বিলিফ) = বিশ্বাস;\r\nAutomatic (অটোমেটিক) = স্বয়ংক্রিয়;\r\nBelong (বিলং) = অন্তর্গত;\r\nDrug (ড্রাগ) = ঔষধ;', 'Pending'),
(283, 8, 3, '2024-01-20', 'Fortune (ফরচুন) = ভাগ্য;\r\nTank (ট্যাংক) – ট্যাঙ্ক, পুকুর;\r\nSomething (সামথিং) = কিছু;\r\nIntelligence (ইন্টেলিজেন্স) = বুদ্ধিমত্তা;\r\nRegular (রেগুলার) = নিয়মিত;\r\nUnderground (আন্ডারগ্রউন্ড) – ভূগর্ভস্থ;\r\nValue (ভ্যালু) – মূল্য;\r\nPrisoner (প্রিসনার) = বন্দী', 'Pending'),
(284, 8, 3, '2024-01-24', '\r\nAcknowledge (একনলেজ) = স্বীকার করা;\r\nSadness (স্যাডনেস) = বিষণ্ণতা;\r\nmeet up (মিটআপ ) = দেখা করা;\r\nCoat (কোট) = কোট/ জামা;\r\nTask (তাস্ক) – কার্য;\r\nThickness (থিকনেস) – ঘনত্ব, বেধ;\r\nSomehow (সামহাও) = যে কোন ভাবেই হউক;', 'Pending'),
(285, 8, 3, '2024-01-24', 'zone (জোন) – মণ্ডল;\r\nRefusal (রেফুসাল) = অস্বীকার, প্রত্যাখ্যান;\r\nEstate (এস্টেট) = স্থাবর বা অস্থাবর সম্পত্তি;\r\nInto (ইনটু) = মধ্যে;\r\nDistance (ডিসটেন্স) = দূরত্ব;\r\nIntroduce (ইন্ট্রোডিউস) = প্রবেশ করানো;\r\nNeighbor (নেইবার) = প্রতিবেশী;\r\nCoach (কোচ) = কো', 'Pending'),
(286, 8, 3, '2024-01-24', 'Sit (সিট) = বসা;\r\nMouth (মাউথ) = মুখ;\r\nPossibility (পসিবিলিটি) = সম্ভাবনা;\r\nJump (জাম্প) = ঝাঁপ দাও;\r\nCandy (ক্যান্ডি) = ক্যান্ডি, মিছরি;\r\nwhole (হোল) – সমগ্র;\r\nPresence (প্রেসেন্স) = উপস্থিতি;\r\nEssential (এসএনশিয়াল) = অপরিহার্য;', 'Pending'),
(287, 8, 3, '2024-01-24', 'Knee (নি) = হাঁটু;\r\nWash (ওয়াশ) – ধোয়া;\r\nLaw (ল) = আইন;\r\nColumn (কালাম) = স্তম্ভ;\r\nLaugh (লাফ) = হাসি;\r\nUnexpected (আনেক্সপেক্টেড) – অপ্রত্যাশিত;\r\nInvestigation (ইনভেস্টিগেশন) = তদন্ত;\r\nStatement (স্টেটমেন্ট) = বিবৃতি;', 'Pending'),
(288, 8, 3, '2024-01-28', 'Cupboard (কাপবোর্ড) = আলমারি;\r\nThursday (থার্সডে) – বৃহস্পতিবার;\r\nyawn (ইয়াওন) –  হাই তোলা;\r\nEquipment (ইকুইপমেন্ট) = উপকরণ;\r\nEnquiry (ইনকোয়ারি) = অনুসন্ধান;\r\nActual (অ্যাকচুয়াল) = যথার্থ;\r\nConclude (কনক্লুড ) = শেষ করা;', 'Pending'),
(289, 8, 3, '2024-01-28', 'Cheese (চীজ) = পনির;\r\nAlong (এলং) = বরাবর;\r\nFoot (ফুট) = পা;\r\nNight (নাইট) = রাত;\r\nInfection (ইনফেকশন) = সংক্রমণ;\r\nStay (স্টে) = থাকা;\r\nQuote (কৌট) = উদ্ধৃতি;\r\nDeposit (ডিপোজিট) = আমানত;', 'Pending'),
(290, 8, 3, '2024-01-28', 'March ( মার্চ ) = মার্চ;\r\nSpiritual (স্পিরিচুয়াল) = আধ্যাত্মিক;\r\nCorner (কর্নার) = কোণা;\r\nExpense (এক্সপেন্স) = ব্যয়;\r\nSenator (সিনেটর) = সিনেটার;\r\nGold (গোল্ড) = স্বর্ণ;\r\nPremises (প্রিমিসেস) = প্রাঙ্গনে;\r\nAbsolutely (অবসোলুটলি) = সম্পূর্ণরূপে;', 'Pending'),
(291, 8, 3, '2024-01-28', 'Exhibit (এক্সহিবিট) = প্রদর্শক;\r\nConsideration (কন্সিডারেশন) = বিবেচনা;\r\nBase ( বেস) = ভিত্তি;\r\nPowerful (পাওয়ারফুল) = ক্ষমতাশালী;\r\nSafe (সেফ) = নিরাপদ;\r\nModern (মডার্ন) = আধুনিক;\r\nClever (ক্লেভার) = চালাক;\r\nSomehow (সামহাও) = যে কোন ভাবেই হউক;', 'Pending'),
(292, 8, 3, '2024-01-28', 'Proposal (প্রপোসাল) = প্রস্তাব;\r\nUpwards (আপওয়ার্ডস) – ঊর্ধ্বে, উপরের অংশে;\r\nwithout (উইদাউট) – ছাড়া, ব্যতীত;\r\nVisit (ভিসিট) – পরিদর্শন করা;\r\nWarn (ওয়ার্ন) – সতর্ক করা;\r\nPost (পোস্ট) = পোস্ট;\r\nExpand (এক্সপ্যান্ড) = বিস্তৃত করা;\r\nDominate (ডমিনেট) =কর্তৃ', 'Pending'),
(293, 8, 3, '2024-01-28', 'Mostly (মোস্টলী) = অধিকাংশ ক্ষেত্রে;\r\nPalace (প্যালেস) = প্রাসাদ;\r\nWay (ওয়ে) – পথ;\r\nLeast (লিস্ট) = ন্যুনতম;\r\nRaw (র) = কাঁচা, অমিশ্রণ;\r\nPreparation (প্রিপারেশন) = প্রস্তুতি;\r\nConfirm (কন্ফার্ম) = নিশ্চিত করা;', 'Pending'),
(294, 8, 3, '2024-02-03', 'Resident (রেসিডেন্স) = বাসিন্দা;\r\nJunior (জুনিয়র) = ছোট;\r\nAware (এওয়ার ) = সচেতন;\r\nJam (জ্যাম) = জ্যাম;\r\nManager (ম্যানেজার) = ম্যানেজার;\r\nCeiling (সিলিং) = ছাদ;\r\nLanguage (ল্যাঙ্গুয়েজ) = ভাষা;\r\nSeat (সিট) = আসন;\r\nDisagree (ডিসেগ্রি) = অসম্মত;', 'Pending'),
(295, 8, 3, '2024-02-03', 'Van (ভ্যান) – গাড়ী;\r\nManufacture (ম্যানুফ্র্যাকচার) = উৎপাদন;\r\nRealistic (রিয়ালিস্টিক) = বাস্তববাদী;\r\nGuess (গেস) = অনুমান, ধারণা;\r\nFarther (ফারদার) = অধিকতর;\r\nOutline (আউটলাইন) = রূপরেখা;\r\nAlternative (অল্টারনেটিভ) = বিকল্প;\r\nFilm (ফিল্ম) = চলচ্চিত্র;', 'Pending'),
(296, 8, 3, '2024-02-03', 'Forest (ফরেস্ট) = বন, জংগল;\r\nAlcoholic (আলকোহলিক) = মদ্যপ;\r\nAnyway (এনিওয়ে) = যাই হোক;\r\nInvitation (ইনভিটেশন) = আমন্ত্রণ;\r\nCompetitive (কম্পিটিটিভ) = প্রতিযোগিতামূলক;\r\nwife (ওয়াইফ) – স্ত্রী;\r\nSting  (স্টিং) – দংশন;', 'Pending'),
(297, 8, 3, '2024-02-03', 'Sometimes (সামটাইমস) = কখনও কখনও;\r\nDisabled (ডিসএবল) = অক্ষম;\r\nEngineer (ইঞ্জিনিয়ার) = প্রকৌশলী;\r\nFlag (ফ্ল্যাগ) = পতাকা;\r\nAction (অ্যাকশন) = কর্ম;\r\nyear (ইয়ার) – বছর;\r\nJudge (জাজ) = বিচারক;\r\nCrisis (ক্রাইসিস) = সঙ্কট;', 'Pending'),
(298, 8, 3, '2024-02-03', 'Disaster (ডিসাস্টার) = বিপর্যয়;\r\nPublic (পাবলিক) = প্রকাশ্য;\r\nSuggest (সাজেস্ট) – সুপারিশ;\r\nTransfer (ট্রান্সফার) – হস্তান্তর, স্থানান্তরণ;\r\nGun (গান) = বন্দুক;\r\nPreference (প্রিফারেন্স) = পক্ষপাত, অনুরক্তি;\r\nTV (টিভি) – টেলিভিশন;\r\nLikely (লাইকলি) = সম্ভ', 'Pending'),
(299, 8, 3, '2024-02-08', 'Effect (ইফেক্ট) = প্রভাব;\r\nNumber (নাম্বার) = সংখ্যা;\r\nUnemployed (আনএমপ্লয়েড) – বেকার;\r\nShallow (শেলো) = অগভীর;\r\nMental (মেন্টাল) = মানসিক;\r\nRepresentative (রিপ্রেসেন্টেটিভ) = প্রতিনিধি;\r\nMilk (মিল্ক) = দুধ;\r\nFame (ফেম) = খ্যাতি;', 'Pending'),
(300, 8, 3, '2024-02-08', 'Moreover (মোরেভার) =  অধিকন্তু;\r\nGasoline (গ্যাসোলিন) =পেট্রল;\r\nCommitment (কমিটমেন্ট) = প্রতিশ্রুতি;\r\nThumb (থাম্ব) – অঙ্গুষ্ঠ, হাতের বুড়ো আঙ্গুলি;\r\nAgo (এগো ) = পূর্বে;\r\nInclude (ইনক্লুড) = অন্তর্ভুক্ত করা;\r\nwindow (উইন্ডো) – জানলা;\r\nword (ওয়ার্ড) – শব্', 'Pending'),
(301, 8, 3, '2024-02-08', 'Dance (ডান্স) = নাচ;\r\nTransparent (ট্রান্সপারেন্ট) – স্বচ্ছ;\r\nAcademic (একাডেমিক) = কেতাবি;\r\nFork (ফর্ক) = কাঁটাচামচ;\r\nWeekly (উইকলি) – সাপ্তাহিক;\r\nBid (বিড) = নিলাম ডাকা;\r\nPatience (পেশেন্স) = ধৈর্য;\r\nScare (স্কেয়ার) = ভীতি;\r\n', 'Pending'),
(302, 8, 3, '2024-02-08', 'Domestic (ডোমেস্টিক) = গার্হস্থ্য/ পারিবারিক;\r\nPath (পাথ) = পথ, রাস্তা;\r\nill (ইল) = অসুস্থ;\r\nTable (টেবিল) – টেবিল, ছক;\r\nDecision ( ডিসিশন ) = সিদ্ধান্ত;\r\nDirection ( ডাইরেকশন ) = অভিমুখ;\r\nFear( ফিয়ার ) = ভয়;\r\nMuscle ( মাসেল ) = পেশী;', 'Pending'),
(303, 8, 3, '2024-02-08', 'Global ( গ্লোবাল ) = বিশ্বব্যাপী;\r\nAmount ( এমাউন্ট ) = পরিমাণ;\r\nAsk ( আস্ক ) = জিজ্ঞাসা করা;\r\nElectronic ( ইলেকট্রনিক ) = বৈদ্যুতিক;\r\nStress ( স্ট্রেস ) – জোর;\r\nPoisonous( প্রিসোনাস ) = বিষাক্ত;\r\nLot  (লট ) = অনেক;\r\nKeen ( কিন ) = উৎসাহী;', 'Pending'),
(304, 8, 3, '2024-02-13', 'Evil ( ইভিল ) = মন্দ;\r\nAttend ( এটেন্ড ) = পরিচর্যা করা;\r\nOffice (অফিস ) = দপ্তর, অফিস;\r\nAlcohol ( এলকোহল ) = মদ্য;\r\nBlue ( ব্লু ) = নীল;\r\nwinner ( উইনার ) – বিজয়ী;\r\nBake ( বেক ) = সেকা;\r\nSwallow ( শ্যালো ) – গেলা, গলাধ করণ করা;', 'Pending'),
(305, 8, 3, '2024-02-14', 'Allow ( এলাও ) = মানিয়া লত্তয়া;\r\nOccur ( অকার ) = ঘটা;\r\nHoliday ( হলিডে ) = ছুটির দিন;\r\nChicken ( চিকেন ) = মুরগির মাংস;\r\nFree ( ফ্রি ) = বিনামূল্যে;\r\nAcid ( অ্যাসিড ) = অ্যাসিড, অম্ল;\r\nExamine ( এক্সামিন ) =পরীক্ষা করা;\r\nState ( স্টেট ) = রাষ্ট্র;', 'Pending'),
(306, 9, 4, '2024-01-16', 'demodeoeiwoeiwoeiwoeiwoeiwoeiwoe', 'Pending'),
(307, 9, 4, '2024-01-10', 'Nowhere (নাওহয়ার) = কোথাও;\r\nPlenty (প্লেনটি) = প্রচুর;\r\nPig (পিগ) = শূকর;\r\nArrange (এরেঞ্জ) = ব্যবস্থা করা;\r\nBound (বাউন্ড) = আবদ্ধ;\r\nHome (হোম) = বাড়ি;\r\nProper (প্রোপার) = সঠিক;\r\nCatch (ক্যাচ) = ধরা;\r\n', 'Pending'),
(308, 9, 4, '2024-01-10', 'Interpret (ইন্টারপ্রেট) = ব্যাখ্যা করা;\r\nPill (পিল) = পিল;\r\nwidth (ওয়াইড) = প্রস্থ;\r\nCover (কভার) = আবরণ;\r\nNor (নর) = নয়, না;\r\nWeigh (ওয়েট) = ওজন করা;\r\nSnow (স্নো) = তুষার;\r\nFall (ফল) = পতন ঘটা;\r\n', 'Pending'),
(309, 9, 4, '2024-01-10', 'Slide ( স্লাইড ) = পথ; \r\nPiano ( পিয়ানো ) = পিয়ানো; \r\nZero ( জিরো ) – শূন্য; \r\nDirt ( ডার্ট ) = ময়লা; \r\nAvoid ( এভোয়েড ) = এড়াতে; \r\nMine ( মাইন ) = খনি; \r\nStrict ( স্টিক ) – যথাযথ; \r\nLane ( লেন ) = গলি;\r\n', 'Pending'),
(310, 9, 4, '2024-01-10', 'Education ( এডুকেশন ) = শিক্ষা;\r\nAngry ( অ্যাংরি ) = রাগী;\r\nLeg ( লেগ ) = পা;\r\nEdition ( এডিশন ) = সংস্করণ;\r\nReduction ( রিডাকশন ) = কমানো;\r\nPanel ( প্যানেল ) = প্যানেল, নামসূচি;\r\nBush ( বুশ ) = ঝোপ;\r\nEdge ( এডজ ) = প্রান্ত;\r\n', 'Pending'),
(311, 9, 4, '2024-01-10', 'Removal ( রিমোভাল ) = অপসারণ;\r\nRest ( রেস্ট ) = বিশ্রাম;\r\nFrame ( ফ্রেম ) = গঠন;\r\nConfuse ( কনফুজ ) = বিশৃঙ্খল করা;\r\nReputation ( রেপুটেশন ) = খ্যাতি;\r\nCheat ( চিট ) = প্রতারণা;\r\nPublish ( পাবলিশ ) = প্রকাশ করা;\r\nBuy ( বায় ) = কেনা;\r\n', 'Pending'),
(312, 9, 4, '2024-01-15', 'Trap ( ট্রেপ ) – ফাঁদ;\r\nUgly ( আগলি ) – কুশ্রী;\r\nAbility ( এবিলিটি ) = দক্ষতা;\r\nRegister ( রেজিস্টার ) = নিবন্ধনS;\r\nMap ( ম্যাপ ) = মানচিত্র;\r\nTool ( টুল ) – টুল;\r\nOur (আওয়ার ) = আমাদের;\r\nSuitable (সুইট্যাবল) – উপযুক্ত;\r\n', 'Pending'),
(313, 9, 4, '2024-01-15', 'Kind (কাইন্ড ) = প্রকার, টাইপ;\r\nFailure ( ফেইলর ) = ব্যর্থতা;\r\nProtection ( প্রটেকশন ) = সুরক্ষা;\r\nInfectious ( ইফেক্টিয়াস ) = সংক্রামক;\r\nDue ( ডিউ ) = বাকি;\r\nWest ( ওয়েস্ট ) – পশ্চিম;\r\nAcross ( এক্রোস ) =সম্মুখীন;\r\n', 'Pending'),
(314, 9, 4, '2024-01-15', 'Improve ( ইম্প্রুভ ) = উন্নত করা;\r\nResponsibility ( রেসপনসিবিলিটি ) = দায়িত্ব;\r\nFamous ( ফেমাস ) = বিখ্যাত;\r\nMurder (মার্ডার ) = হত্যা;\r\nGrain ( গ্রেইন ) =শস্য;\r\nNurse ( নার্স ) =নার্স, পরিষেবক;\r\nAccess ( একসেস ) = প্রবেশ;\r\nSouthern ( সাউথটান ) = দক্ষিণা', 'Pending'),
(315, 9, 4, '2024-01-15', 'Govern ( গভার্ন ) =শাসন করা;\r\nBeautiful ( বিউটিফুল ) = সুন্দর;\r\nBuyer (বায়ার ) = ক্রেতা;\r\nMotorcycle ( মোটরসাইকেল ) = মোটরসাইকেল;\r\nSuffer (সাফার ) – ভোগা;\r\nHomework ( হোমওয়ার্ক ) = বাড়ির কাজ;\r\nFly (ফ্লাই ) = মাছি;\r\nSkirt (স্কার্ট ) = স্কার্ট;\r\n', 'Pending'),
(316, 9, 4, '2024-01-15', 'Honest (অনেস্ট) = ন্যায়বান;\r\nTravel (ট্রাভেল) – ভ্রমণ;\r\nGrandfather (n)= দাদা , পিতামহ;\r\nComplicate (কমপ্লিকেট) = জটিল;\r\nApprove (এপ্রভ) = অনুমোদন করা;\r\nMeal (মিল) = খাবার;\r\nEncounter (এনকাউন্টার) = সম্মুখীন হওয়া;\r\nImport (ইম্পোর্ট) = আমদানি;', 'Pending'),
(317, 9, 4, '2024-01-20', 'Below (বিলো) = নিচে;\r\nTimetable (টাইমটেবিল) – সময়নিরুপণতালিকা;\r\nStory (স্টোরি) – গল্প;\r\nSurname (সারনেম) – পদবি;\r\nCable (কেবল) = কেবল;\r\nRain (রেইন) = বৃষ্টি;\r\nyourself (উওরসেলফ) – তুমিই, তুমি নিজেকে;\r\nPossible (পসিবল) = সম্ভব;', 'Pending'),
(318, 9, 4, '2024-01-20', 'Paint (পেইন্ট) = রং;\r\nEarn (আর্ন) = আয় করা;\r\nDivorce (ডিভোর্স) = বিবাহবিচ্ছেদ;\r\nyard (ইয়ার্ড) – উঠান;\r\nyet (ইয়েট) – অথচ,  এখনো;\r\nhello ( হেলো) = ওহে ;\r\nEconomy (ইকোনমি) = অর্থনীতি;\r\nAugust (আগস্ট) = অগাস্ট;', 'Pending'),
(319, 9, 4, '2024-01-20', 'Launch (লঞ্চ) = শুরু করা;\r\nBear (বিয়ার) = সহ্য করা / ভালুক;\r\nArt (আর্ট) = শিল্প;\r\nUncomfortable (আনকমফোর্টেবল) – অস্বস্তিকর;\r\nBelief (বিলিফ) = বিশ্বাস;\r\nAutomatic (অটোমেটিক) = স্বয়ংক্রিয়;\r\nBelong (বিলং) = অন্তর্গত;\r\nDrug (ড্রাগ) = ঔষধ;', 'Pending'),
(320, 9, 4, '2024-01-20', 'Fortune (ফরচুন) = ভাগ্য;\r\nTank (ট্যাংক) – ট্যাঙ্ক, পুকুর;\r\nSomething (সামথিং) = কিছু;\r\nIntelligence (ইন্টেলিজেন্স) = বুদ্ধিমত্তা;\r\nRegular (রেগুলার) = নিয়মিত;\r\nUnderground (আন্ডারগ্রউন্ড) – ভূগর্ভস্থ;\r\nValue (ভ্যালু) – মূল্য;\r\nPrisoner (প্রিসনার) = বন্দী', 'Pending'),
(322, 9, 4, '2024-01-24', 'zone (জোন) – মণ্ডল;\r\nRefusal (রেফুসাল) = অস্বীকার, প্রত্যাখ্যান;\r\nEstate (এস্টেট) = স্থাবর বা অস্থাবর সম্পত্তি;\r\nInto (ইনটু) = মধ্যে;\r\nDistance (ডিসটেন্স) = দূরত্ব;\r\nIntroduce (ইন্ট্রোডিউস) = প্রবেশ করানো;\r\nNeighbor (নেইবার) = প্রতিবেশী;\r\nCoach (কোচ) = কো', 'Pending'),
(323, 9, 4, '2024-01-24', 'Sit (সিট) = বসা;\r\nMouth (মাউথ) = মুখ;\r\nPossibility (পসিবিলিটি) = সম্ভাবনা;\r\nJump (জাম্প) = ঝাঁপ দাও;\r\nCandy (ক্যান্ডি) = ক্যান্ডি, মিছরি;\r\nwhole (হোল) – সমগ্র;\r\nPresence (প্রেসেন্স) = উপস্থিতি;\r\nEssential (এসএনশিয়াল) = অপরিহার্য;', 'Pending'),
(325, 9, 4, '2024-01-28', 'Cupboard (কাপবোর্ড) = আলমারি;\r\nThursday (থার্সডে) – বৃহস্পতিবার;\r\nyawn (ইয়াওন) –  হাই তোলা;\r\nEquipment (ইকুইপমেন্ট) = উপকরণ;\r\nEnquiry (ইনকোয়ারি) = অনুসন্ধান;\r\nActual (অ্যাকচুয়াল) = যথার্থ;\r\nConclude (কনক্লুড ) = শেষ করা;', 'Pending'),
(326, 9, 4, '2024-01-28', 'Cheese (চীজ) = পনির;\r\nAlong (এলং) = বরাবর;\r\nFoot (ফুট) = পা;\r\nNight (নাইট) = রাত;\r\nInfection (ইনফেকশন) = সংক্রমণ;\r\nStay (স্টে) = থাকা;\r\nQuote (কৌট) = উদ্ধৃতি;\r\nDeposit (ডিপোজিট) = আমানত;', 'Pending'),
(327, 9, 4, '2024-01-28', 'March ( মার্চ ) = মার্চ;\r\nSpiritual (স্পিরিচুয়াল) = আধ্যাত্মিক;\r\nCorner (কর্নার) = কোণা;\r\nExpense (এক্সপেন্স) = ব্যয়;\r\nSenator (সিনেটর) = সিনেটার;\r\nGold (গোল্ড) = স্বর্ণ;\r\nPremises (প্রিমিসেস) = প্রাঙ্গনে;\r\nAbsolutely (অবসোলুটলি) = সম্পূর্ণরূপে;', 'Pending'),
(328, 9, 4, '2024-01-28', 'Exhibit (এক্সহিবিট) = প্রদর্শক;\r\nConsideration (কন্সিডারেশন) = বিবেচনা;\r\nBase ( বেস) = ভিত্তি;\r\nPowerful (পাওয়ারফুল) = ক্ষমতাশালী;\r\nSafe (সেফ) = নিরাপদ;\r\nModern (মডার্ন) = আধুনিক;\r\nClever (ক্লেভার) = চালাক;\r\nSomehow (সামহাও) = যে কোন ভাবেই হউক;', 'Pending'),
(329, 9, 4, '2024-01-28', 'Proposal (প্রপোসাল) = প্রস্তাব;\r\nUpwards (আপওয়ার্ডস) – ঊর্ধ্বে, উপরের অংশে;\r\nwithout (উইদাউট) – ছাড়া, ব্যতীত;\r\nVisit (ভিসিট) – পরিদর্শন করা;\r\nWarn (ওয়ার্ন) – সতর্ক করা;\r\nPost (পোস্ট) = পোস্ট;\r\nExpand (এক্সপ্যান্ড) = বিস্তৃত করা;\r\nDominate (ডমিনেট) =কর্তৃ', 'Pending'),
(330, 9, 4, '2024-01-28', 'Mostly (মোস্টলী) = অধিকাংশ ক্ষেত্রে;\r\nPalace (প্যালেস) = প্রাসাদ;\r\nWay (ওয়ে) – পথ;\r\nLeast (লিস্ট) = ন্যুনতম;\r\nRaw (র) = কাঁচা, অমিশ্রণ;\r\nPreparation (প্রিপারেশন) = প্রস্তুতি;\r\nConfirm (কন্ফার্ম) = নিশ্চিত করা;', 'Pending'),
(331, 9, 4, '2024-02-03', 'Resident (রেসিডেন্স) = বাসিন্দা;\r\nJunior (জুনিয়র) = ছোট;\r\nAware (এওয়ার ) = সচেতন;\r\nJam (জ্যাম) = জ্যাম;\r\nManager (ম্যানেজার) = ম্যানেজার;\r\nCeiling (সিলিং) = ছাদ;\r\nLanguage (ল্যাঙ্গুয়েজ) = ভাষা;\r\nSeat (সিট) = আসন;\r\nDisagree (ডিসেগ্রি) = অসম্মত;', 'Pending'),
(332, 9, 4, '2024-02-03', 'Van (ভ্যান) – গাড়ী;\r\nManufacture (ম্যানুফ্র্যাকচার) = উৎপাদন;\r\nRealistic (রিয়ালিস্টিক) = বাস্তববাদী;\r\nGuess (গেস) = অনুমান, ধারণা;\r\nFarther (ফারদার) = অধিকতর;\r\nOutline (আউটলাইন) = রূপরেখা;\r\nAlternative (অল্টারনেটিভ) = বিকল্প;\r\nFilm (ফিল্ম) = চলচ্চিত্র;', 'Pending'),
(333, 9, 4, '2024-02-03', 'Forest (ফরেস্ট) = বন, জংগল;\r\nAlcoholic (আলকোহলিক) = মদ্যপ;\r\nAnyway (এনিওয়ে) = যাই হোক;\r\nInvitation (ইনভিটেশন) = আমন্ত্রণ;\r\nCompetitive (কম্পিটিটিভ) = প্রতিযোগিতামূলক;\r\nwife (ওয়াইফ) – স্ত্রী;\r\nSting  (স্টিং) – দংশন;', 'Pending'),
(334, 9, 4, '2024-02-03', 'Sometimes (সামটাইমস) = কখনও কখনও;\r\nDisabled (ডিসএবল) = অক্ষম;\r\nEngineer (ইঞ্জিনিয়ার) = প্রকৌশলী;\r\nFlag (ফ্ল্যাগ) = পতাকা;\r\nAction (অ্যাকশন) = কর্ম;\r\nyear (ইয়ার) – বছর;\r\nJudge (জাজ) = বিচারক;\r\nCrisis (ক্রাইসিস) = সঙ্কট;', 'Pending'),
(335, 9, 4, '2024-02-03', 'Disaster (ডিসাস্টার) = বিপর্যয়;\r\nPublic (পাবলিক) = প্রকাশ্য;\r\nSuggest (সাজেস্ট) – সুপারিশ;\r\nTransfer (ট্রান্সফার) – হস্তান্তর, স্থানান্তরণ;\r\nGun (গান) = বন্দুক;\r\nPreference (প্রিফারেন্স) = পক্ষপাত, অনুরক্তি;\r\nTV (টিভি) – টেলিভিশন;\r\nLikely (লাইকলি) = সম্ভ', 'Pending'),
(336, 9, 4, '2024-02-08', 'Effect (ইফেক্ট) = প্রভাব;\r\nNumber (নাম্বার) = সংখ্যা;\r\nUnemployed (আনএমপ্লয়েড) – বেকার;\r\nShallow (শেলো) = অগভীর;\r\nMental (মেন্টাল) = মানসিক;\r\nRepresentative (রিপ্রেসেন্টেটিভ) = প্রতিনিধি;\r\nMilk (মিল্ক) = দুধ;\r\nFame (ফেম) = খ্যাতি;', 'Pending'),
(337, 9, 4, '2024-02-08', 'Moreover (মোরেভার) =  অধিকন্তু;\r\nGasoline (গ্যাসোলিন) =পেট্রল;\r\nCommitment (কমিটমেন্ট) = প্রতিশ্রুতি;\r\nThumb (থাম্ব) – অঙ্গুষ্ঠ, হাতের বুড়ো আঙ্গুলি;\r\nAgo (এগো ) = পূর্বে;\r\nInclude (ইনক্লুড) = অন্তর্ভুক্ত করা;\r\nwindow (উইন্ডো) – জানলা;\r\nword (ওয়ার্ড) – শব্', 'Pending'),
(338, 9, 4, '2024-02-08', 'Dance (ডান্স) = নাচ;\r\nTransparent (ট্রান্সপারেন্ট) – স্বচ্ছ;\r\nAcademic (একাডেমিক) = কেতাবি;\r\nFork (ফর্ক) = কাঁটাচামচ;\r\nWeekly (উইকলি) – সাপ্তাহিক;\r\nBid (বিড) = নিলাম ডাকা;\r\nPatience (পেশেন্স) = ধৈর্য;\r\nScare (স্কেয়ার) = ভীতি;\r\n', 'Pending'),
(339, 9, 4, '2024-02-08', 'Domestic (ডোমেস্টিক) = গার্হস্থ্য/ পারিবারিক;\r\nPath (পাথ) = পথ, রাস্তা;\r\nill (ইল) = অসুস্থ;\r\nTable (টেবিল) – টেবিল, ছক;\r\nDecision ( ডিসিশন ) = সিদ্ধান্ত;\r\nDirection ( ডাইরেকশন ) = অভিমুখ;\r\nFear( ফিয়ার ) = ভয়;\r\nMuscle ( মাসেল ) = পেশী;', 'Pending'),
(340, 9, 4, '2024-02-08', 'Global ( গ্লোবাল ) = বিশ্বব্যাপী;\r\nAmount ( এমাউন্ট ) = পরিমাণ;\r\nAsk ( আস্ক ) = জিজ্ঞাসা করা;\r\nElectronic ( ইলেকট্রনিক ) = বৈদ্যুতিক;\r\nStress ( স্ট্রেস ) – জোর;\r\nPoisonous( প্রিসোনাস ) = বিষাক্ত;\r\nLot  (লট ) = অনেক;\r\nKeen ( কিন ) = উৎসাহী;', 'Pending'),
(341, 9, 4, '2024-02-13', 'Evil ( ইভিল ) = মন্দ;\r\nAttend ( এটেন্ড ) = পরিচর্যা করা;\r\nOffice (অফিস ) = দপ্তর, অফিস;\r\nAlcohol ( এলকোহল ) = মদ্য;\r\nBlue ( ব্লু ) = নীল;\r\nwinner ( উইনার ) – বিজয়ী;\r\nBake ( বেক ) = সেকা;\r\nSwallow ( শ্যালো ) – গেলা, গলাধ করণ করা;', 'Pending'),
(342, 9, 4, '2024-02-14', 'Allow ( এলাও ) = মানিয়া লত্তয়া;\r\nOccur ( অকার ) = ঘটা;\r\nHoliday ( হলিডে ) = ছুটির দিন;\r\nChicken ( চিকেন ) = মুরগির মাংস;\r\nFree ( ফ্রি ) = বিনামূল্যে;\r\nAcid ( অ্যাসিড ) = অ্যাসিড, অম্ল;\r\nExamine ( এক্সামিন ) =পরীক্ষা করা;\r\nState ( স্টেট ) = রাষ্ট্র;', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `permission_table`
--

CREATE TABLE `permission_table` (
  `id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `division` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `study_level` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `email`, `name`, `phone`, `gender`, `dob`, `division`, `institute`, `study_level`, `password`, `status`) VALUES
(1, 'tariqbd1998@gmail.com', 'tariq', 1625796966, 'male', '2024-01-10', 'dhaka', 'NUB', 'university', '$2a$10$HxADXcq2Qvcig1KN2PsAwODhKYF4qANXnkrir2auCrr8PNHj5ur1a', 0),
(2, 'tariq.tvsl.2021@gmail.com', 'riad', 1736283743, 'Female', '2024-01-09', 'dhaka', 'ewu', 'university', '$2a$10$BoEANpaAQJbMIJLXku5WU.2xDKL2knrMa7tXRe.qEmuj9U6FFHkRS', 1),
(3, 'tariq@gmail.com', 'tariq', 1625796968, 'Male', '2024-01-17', 'Barishal', 'NUB', 'College', '$2a$10$IRbC1/V3oC72IYxdOLRJYeojWEw1vKoeaQSDdk7KBria7BoZERQ5i', 1),
(4, 'raj@gmail.com', 'Shorif', 1625796966, 'Male', '2024-01-23', 'Chattogram', 'ewu', 'College', '$2a$10$IMUwxdO8VrkLGnxIMB7w/.aGkDvvVl7m2Y1x9eLxyvlYVJvOh84nS', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `new_app`
--
ALTER TABLE `new_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_content`
--
ALTER TABLE `new_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_table`
--
ALTER TABLE `permission_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `new_app`
--
ALTER TABLE `new_app`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `new_content`
--
ALTER TABLE `new_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT for table `permission_table`
--
ALTER TABLE `permission_table`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
