-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Kwi 2017, 21:25
-- Wersja serwera: 10.1.21-MariaDB
-- Wersja PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Baza danych: `botprojekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jezyk`
--

CREATE TABLE `jezyk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `jezyk`
--

INSERT INTO `jezyk` (`id`, `nazwa`) VALUES
(11, 'Polska'),
(12, 'Usa'),
(13, 'Niemcy'),
(14, 'Hiszpania'),
(15, 'Francja');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `obrazek` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`id`, `nazwa`, `opis`, `obrazek`) VALUES
(5, 'Cross', 'Sprawa bardzo prosta. Motocykl crossowy nie ma homologacji i jest przeznaczony z założenia do sportu. Jest on idealnym połączeniem mocy z niską wagą i niesamowitą poręcznością. Coraz częściej fabryczne motocykle zbliżone są do zawodniczego ideału i by efektywnie startować w zawodach, nie trzeba inwestować w dodatkowe części tuningowe. Nie oznacza to jednak, że nasze maszyny mają pozostać w oryginale. Na rynku znajdziemy setki części tuningowych, w zależności od zasobności portfela i wymagań. Rozbieżność klasowa takich sprzętów jest bardzo duża - od malutkich 65ccm do mocarnych pięćsetek, startujących w klasie MX3. Warto także wspomnieć, że dopiero od kilku lat w Motocrossie królują motocykle czterosuwowe, które wyparły przestarzałe dwusuwy. Wbrew pozorom jednak sprzętami z jednostkami dwusuwowymi z powodzeniem można się ścigać, co czynią zresztą niektórzy topowi zawodnicy. ', 0x68747470733a2f2f666f746f2e7363696761637a2e706c2f67616c6c6572792f73706f72742f656e6475726f2f43726f73735f656e6475726f5f73757065726d6f746f5f726f647a616a655f695f6e617a77795f6d6f746f63796b6c695f6f6666726f61642f5f73757a756b695f726d7a5f3435305f43726f73732e6a7067),
(6, 'Enduro', 'Motocykl wyczynowy budowany na bazie motocykla crossowego. Przede wszystkim jest on homologowany, ma zmienioną charakterystykę silnika, nastawy zawieszeń i porusza się na innym ogumieniu. Posiada on pełną instalację elektryczną, z oświetleniem włącznie. Rozbieżności nie są takie wielkie, lecz z drugiej strony, to jak porównywanie auta wyścigowego z autem rajdowym. Wielu zawodników nie wyobraża sobie startowania na przerobionej crossówce, inni zaś z powodzeniem na takowych startują. W każdym razie - są to motocykle stricte wyczynowe, przeznaczone do sportu. Można zaobserwować ostatnimi czasy tendencję do tworzenia spokojniejszych „endurek\", o mniej wymagającej charakterystyce. Jest to w pełni zrozumiałe, ponieważ im mniej z motocyklem walczymy, tym lepsze rezultaty możemy osiągać. Niestety, coraz rzadziej na Rajdach Enduro będziemy mogli spotkać cieszące się dużą popularnością zarówno w Enduro jak i w Motocrossie dwutakty, które w końcu zostają wycofywane z produkcji, ze względu na rosnące normy dotyczące czystości emitowanych spalin.', 0x68747470733a2f2f666f746f2e7363696761637a2e706c2f67616c6c6572792f73706f72742f656e6475726f2f43726f73735f656e6475726f5f73757065726d6f746f5f726f647a616a655f695f6e617a77795f6d6f746f63796b6c695f6f6666726f61642f5f6b746d5f6578635f3235305f486172645f456e6475726f2e6a7067),
(8, 'Dualsport', 'Motocykle te łączą zalety jazdy w terenie i po szosie. Często grupę tę nazywa się enduro, co nie jest wielkim błędem, jednak jako profesjonaliści staramy się stosować poprawne nazewnictwo. Są dużo mniej awaryjne niż motocykle wyczynowe - co jednak łączy się z mniejszą mocą. Cechują się większą wagą, spowodowaną pełnym przystosowaniem do drogowego śmigania, a także dużo bardziej uniwersalnym ogumieniem. Podręcznikowym przykładem jest Yamaha DT, która jest najczęściej spotykanym motocyklem terenowym w naszym kraju. Pojemności takich DualSportów są przeróżne, od 50ccm aż po 600 i więcej. Sprzęty te, tak jak wcześniej zostało to wspomniane, są mniej wysilone, dzięki czemu bardziej wytrwałe. Dodatkowo zawieszenie przystosowane bardziej do jazdy po drogach utwardzonych niż w terenie, na którym raczej większe skoki nie są wskazane ze względna własne dobro i chęć posiadania potomstwa. ', 0x68747470733a2f2f666f746f2e7363696761637a2e706c2f67616c6c6572792f73706f72742f656e6475726f2f43726f73735f656e6475726f5f73757065726d6f746f5f726f647a616a655f695f6e617a77795f6d6f746f63796b6c695f6f6666726f61642f5f73757a756b695f64725f3335305f536f66745f456e6475726f2e6a7067),
(9, 'Supermoto', 'Stworzone z myślą o fanach Supermoto. W ostatnich latach powstaje coraz więcej sprzętów SM do jazdy na co dzień. Mała waga, mocny silnik i wysokie siodło sprawia, że takie sprzęty świetnie spisują się w ruchu miejskim. Wąska talia sprawia, że przeciskanie się między korkami w gąszczu samochodów to dla nich pestka. Warto również wspomnieć o dużo mniejszej awaryjności tego typu motocykli, co jest niewątpliwie ogromnym plusem dla zwykłego Kowalskiego, który ceni sobie niezawodność nie tylko jednostki napędowej, ale także pozostałych podzespołów. Tego typu motocykle szosowe można porównać trochę z Soft Enduro, zresztą często na bazie takowych powstają.', 0x68747470733a2f2f666f746f2e7363696761637a2e706c2f67616c6c6572792f73706f72742f656e6475726f2f43726f73735f656e6475726f5f73757065726d6f746f5f726f647a616a655f695f6e617a77795f6d6f746f63796b6c695f6f6666726f61642f5f6b746d5f3935305f73757065726d6f746f5f53757065726d6f746f2e6a7067),
(10, 'Trial', 'Rower z silnikiem? Sprzęty bardzo lekkie do pokonywania piekielnie trudnych terenów. Zresztą trial jest jednym z najstarszych sportów terenowych! Te motocykle są w pewnym stopniu protoplastami wszystkich powyższych. Jazda takim jednośladem to szalenie wielkie wyzwanie i by coś zdziałać w tym sporcie, trzeba trenować od małego. Ostatnimi czasy widzi się tendencję do wprowadzania silników czterosuwowych do tej dyscypliny. Świetnym ruchem FIMu było także stworzenie Halowych Mistrzostw Świata w Trialu, która to seria ma szalenie duża liczbę fanów na całym świecie. Wiodącymi markami jest Beta, Gas-Gas czy hiszpańska Montesa. ', 0x68747470733a2f2f666f746f2e7363696761637a2e706c2f67616c6c6572792f73706f72742f656e6475726f2f43726f73735f656e6475726f5f73757065726d6f746f5f726f647a616a655f695f6e617a77795f6d6f746f63796b6c695f6f6666726f61642f5f73636f7270615f547269616c2e6a7067);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konto`
--

CREATE TABLE `konto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rola_id` int(11) NOT NULL,
  `imie` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `login` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `konto`
--

INSERT INTO `konto` (`id`, `rola_id`, `imie`, `nazwisko`, `email`, `login`, `haslo`) VALUES
(1, 9, 'Dawid', 'Lubomski', 'lelo-95@o2.pl', 'Cuando', '1234'),
(5, 8, 'Tester', 'Testingu', 'testowy@testy.pl', 'test', 'test');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podkategoria`
--

CREATE TABLE `podkategoria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategoria_id` int(11) NOT NULL,
  `nazwa` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `opis` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `obrazek` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `podkategoria`
--

INSERT INTO `podkategoria` (`id`, `kategoria_id`, `nazwa`, `opis`, `obrazek`) VALUES
(2, 6, 'Ktm', 'irma produkująca motocykle, rowery, quady i gokarty, założona w 1934 roku przez Hansa Trunkenpolza w Mattighofen w Austrii', ''),
(3, 5, 'Yamaha', 'Yamaha Group – japoński koncern, założony 12 października 1887 przez Torakusu Yamahę, notowany na giełdzie w Tokio.', ''),
(4, 10, 'Sherco', 'Sherco – hiszpańsko-francuski producent motocykli, specjalizujący się w motocyklach terenowe, trial, enduro i supermoto.', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rola`
--

CREATE TABLE `rola` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nazwa` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `opis` varchar(300) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `rola`
--

INSERT INTO `rola` (`id`, `nazwa`, `opis`) VALUES
(7, 'Pro', 'pro'),
(8, 'Expert', 'ekspert'),
(9, 'Hobby', 'amator');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wynik`
--

CREATE TABLE `wynik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `konto_id` int(11) NOT NULL,
  `zestaw_id` int(11) NOT NULL,
  `data_wyniku` date NOT NULL,
  `wynik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `wynik`
--

INSERT INTO `wynik` (`id`, `konto_id`, `zestaw_id`, `data_wyniku`, `wynik`) VALUES
(2, 1, 1, '0000-00-00', 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zestaw`
--

CREATE TABLE `zestaw` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `konto_id` int(11) NOT NULL,
  `jezyk1_id` int(11) NOT NULL,
  `jezyk2_id` int(11) NOT NULL,
  `podkategoria_id` int(11) NOT NULL,
  `nazwa` varchar(200) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `zestaw` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `ilosc_slowek` int(11) NOT NULL,
  `data_dodania` date NOT NULL,
  `data_edycji` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `zestaw`
--

INSERT INTO `zestaw` (`id`, `konto_id`, `jezyk1_id`, `jezyk2_id`, `podkategoria_id`, `nazwa`, `zestaw`, `ilosc_slowek`, `data_dodania`, `data_edycji`) VALUES
(1, 5, 11, 14, 2, 'Pakiet', 'Nr. startowy: #777', 2, '2017-04-14', '2017-04-14');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `jezyk`
--
ALTER TABLE `jezyk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konto`
--
ALTER TABLE `konto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `podkategoria`
--
ALTER TABLE `podkategoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rola`
--
ALTER TABLE `rola`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wynik`
--
ALTER TABLE `wynik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zestaw`
--
ALTER TABLE `zestaw`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `jezyk`
--
ALTER TABLE `jezyk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `konto`
--
ALTER TABLE `konto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `podkategoria`
--
ALTER TABLE `podkategoria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `rola`
--
ALTER TABLE `rola`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT dla tabeli `wynik`
--
ALTER TABLE `wynik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `zestaw`
--
ALTER TABLE `zestaw`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;