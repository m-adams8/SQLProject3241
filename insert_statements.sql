-- Insert data into Publisher table
INSERT INTO Publisher (Publisher_ID, Name, Email, Address, Phone) VALUES (1, 'Sybex', '', '', ''),
(2, 'McGraw-Hill Osborne Media', '', '', ''),
(3, 'John Wiley & Sons', '', '', ''),
(4, 'Morgan Kaufmann', '', '', ''),
(5, 'Schmidt Ink, Inc.', '', '', ''),
(6, 'Addison-Wesley Pub Co', '', '', ''),
(7, 'Macromedia Press', '', '', ''),
(8, 'Addison-Wesley Publishing', '', '', ''),
(9, 'Wrox Press Inc', '', '', ''),
(10, 'Berkley Pub Group', '', '', ''),
(11, 'Penguin USA ', '', '', ''),
(12, 'O''Reilly & Associates', '', '', ''),
(13, 'McGraw-Hill Trade', '', '', ''),
(14, 'Picador', '', '', ''),
(15, 'St. Martin''s Press', '', '', ''),
(16, 'Crown Pub', '', '', ''),
(17, 'Little Brown & Company', '', '', ''),
(18, 'Simon & Schuster', '', '', ''),
(19, 'HarperCollins', '', '', ''),
(20, 'Jossey-Bass', '', '', ''),
(21, 'Multnomah Publishers Inc.', '', '', ''),
(22, 'Perennial', '', '', ''),
(23, 'Dell Pub Co', '', '', ''),
(24, 'Harlequin', '', '', ''),
(25, 'Viking Press', '', '', ''),
(26, 'Perseus Publishing', '', '', ''),
(27, 'Random House', '', '', ''),
(28, 'Knopf', '', '', ''),
(29, 'Wolfram Media, Inc.', '', '', ''),
(30, 'Fireside', '', '', ''),
(31, 'Random House Trade Paperbacks', '', '', ''),
(32, 'Gibbs Smith Publisher', '', '', ''),
(33, 'Taunton Pr', '', '', ''),
(34, 'Vendome Pr', '', '', ''),
(35, 'Clarkson N. Potter', '', '', ''),
(36, 'MIT Press', '', '', ''),
(37, 'McGraw-Hill/Irwin', '', '', ''),
(38, 'South-Western College Pub', '', '', ''),
(39, 'Prentice Hall', '', '', ''),
(40, 'Warner Books', '', '', ''),
(41, 'Scribner', '', '', ''),
(42, 'Pocket Books', '', '', ''),
(43, 'Pantheon Books', '', '', ''),
(44, 'Del Rey', '', '', ''),
(45, 'Doubleday', '', '', ''),
(46, 'Donald M. Grant Publisher, Inc.', '', '', ''),
(47, 'Vintage Books', '', '', ''),
(48, 'Scribner Paperback Fiction', '', '', ''),
(49, 'Harvest Books', '', '', ''),
(50, 'Harperperennial Library', '', '', ''),
(51, 'W.W. Norton & Company', '', '', ''),
(52, 'Harvard Univ Pr', '', '', ''),
(53, 'Prentice Hall PTR', '', '', ''),
(54, 'New Riders Publishing', '', '', ''),
(55, 'Ballantine Books ', '', '', ''),
(56, 'Ballantine Books', '', '', ''),
(57, 'Back Bay Books', '', '', ''),
(58, 'Anchor Books', '', '', ''),
(59, 'Putnam Pub Group', '', '', ''),
(60, 'Silhouette', '', '', ''),
(61, 'Lark Books', '', '', ''),
(62, 'Harper', '', '', '');

-- Insert data into Author table
INSERT INTO Author (Author_ID, F_Name, M_Name, L_Name) VALUES (1, 'Chip', NULL, 'Dawes'),
(2, 'Brian', NULL, 'Knight'),
(3, 'Ralph', NULL, 'Kimball'),
(4, 'Bill', NULL, 'Mann'),
(5, 'Ian', 'H.', 'Witten'),
(6, 'Robert', 'D.', 'Schmidt'),
(7, 'Ken', NULL, 'Henderson'),
(8, 'Paul', NULL, 'Litwin'),
(9, 'Ben', NULL, 'Forta'),
(10, 'Ramez', 'A.', 'Elmasri'),
(11, 'Rob', NULL, 'Vieira'),
(12, 'Paul', NULL, 'DuBois'),
(13, 'Laurell', 'K.', 'Hamilton'),
(14, 'Sue', 'Monk', 'Kidd'),
(15, 'Tara', NULL, 'Calishain'),
(16, 'Jay', 'P.', 'Decima'),
(17, 'Wladyslaw', NULL, 'Szpilman'),
(18, 'Roma', NULL, 'Ligocka'),
(19, 'Michael', NULL, 'Cunningham'),
(20, 'Larry', NULL, 'Bossidy'),
(21, 'James', NULL, 'Patterson'),
(22, 'Jeffery', NULL, 'Deaver'),
(23, 'Jacquelyn', NULL, 'Mitchard'),
(24, 'Patrick', NULL, 'Lencioni'),
(25, 'Mary', 'Higgins', 'Clark'),
(26, 'Dee', NULL, 'Henderson'),
(27, 'Ann', NULL, 'Patchett'),
(28, 'Karen', 'Marie', 'Moning'),
(29, 'Suzanne', NULL, 'Brockmann'),
(30, 'Steven', NULL, 'Pinker'),
(31, 'Albert-László', NULL, 'Barabási'),
(32, 'Edward', 'Osborne', 'Wilson'),
(33, 'Stephen', NULL, 'Wolfram'),
(34, 'Harold', NULL, 'McGee'),
(35, 'Francis', 'D.', 'Ching'),
(36, 'Virginia', NULL, 'McAlester'),
(37, 'Bryan', NULL, 'Burkhart'),
(38, 'Ralph', 'R.', 'Kylloe'),
(39, 'Leslie', 'Plummer', 'Clagett'),
(40, 'Gerard', NULL, 'Gefen'),
(41, 'Donald', NULL, 'Kaufman'),
(42, 'Simon', NULL, 'Benninga'),
(43, 'Benjamin', NULL, 'Czaczkes'),
(44, 'Mark', NULL, 'Grinblatt'),
(45, 'Robert', 'C.', 'Higgins'),
(46, 'Paul', 'Marcus', 'Fischer'),
(47, 'Donald', 'E.', 'Kieso'),
(48, 'Lawrence', NULL, 'Revsine'),
(49, 'Nicholas', NULL, 'Sparks'),
(50, 'Mary', 'Higgins', 'Clark'),
(51, 'Don', NULL, 'DeLillo'),
(52, 'Stephen', NULL, 'King'),
(53, 'Mark', 'Z.', 'Danielewski'),
(54, 'Michael', NULL, 'Romkey'),
(55, 'Chuck', NULL, 'Palahniuk'),
(56, 'Matthew', NULL, 'Delaney'),
(57, 'Stephen', NULL, 'King'),
(58, 'Don', NULL, 'DeLillo'),
(59, 'Ann', NULL, 'Patchett'),
(60, 'Steven', NULL, 'Pinker'),
(61, 'Simon', NULL, 'Benninga'),
(62, 'Jeffrey', 'M.', 'Wooldridge'),
(63, 'Steven', 'J.', 'Root'),
(64, 'Ken', NULL, 'Coffman'),
(65, 'Gerald', NULL, 'Carter'),
(66, 'Scott', NULL, 'Kelby'),
(67, 'B.', 'J.', 'Fogg'),
(68, 'Michael', NULL, 'Meyers'),
(69, 'Carl', NULL, 'Sagan'),
(70, 'Alice', NULL, 'Sebold'),
(71, 'Alice', NULL, 'Sebold'),
(72, 'Ian', NULL, 'McEwan'),
(73, 'Nora', NULL, 'Roberts'),
(74, 'Andy', NULL, 'Rae'),
(75, 'Joseph', NULL, 'Truini'),
(76, 'Terry', NULL, 'Pratchett');

-- Insert data into Book table
INSERT INTO Book (ISBN, Title, Price, Category, Year, Stock, Publisher_ID) VALUES (782140661, 'OCP: Oracle9i Certification Kit', 104.97, 'Computer', 2002, 10, 1),
(72227885, 'SQL Server 2000 for Experienced DBA''s', 34.99, 'Computer', 2003, 10, 2),
(471200247, 'The Data Warehouse Toolkit: The Complete Guide to Dimensional Modeling', 50.0, 'Computer', 2002, 10, 3),
(72227710, 'How To Do Everything with Your Tablet PC', 17.49, 'Computer', 2003, 10, 2),
(1558605525, 'Data Mining: Practical Machine Learning Tools and Techniques with Java Implementations', 49.95, 'Computer', 1999, 10, 4),
(972263608, 'Creating Documents with BusinessObjects 5.1', 99.0, 'Computer', 2002, 10, 5),
(201615762, 'The Guru''s Guide to Transact-SQL', 38.49, 'Computer', 2000, 10, 6),
(782140114, 'Access 2002 Developer''s Handbook Set', 69.99, 'Computer', 2001, 10, 1),
(321125169, 'ColdFusion MX Web Application Construction Kit', 38.49, 'Computer', 2002, 10, 7),
(805317554, 'Fundamentals of Database Systems ', 95.0, 'Computer', 1999, 10, 8),
(1861004486, 'Professional SQL Server 2000 Programming', 41.99, 'Computer', 2000, 10, 9),
(735712123, 'MySQL', 34.99, 'Computer', 2003, 10, 8),
(425188361, 'Cerulean Sins', 16.07, 'Literature & Fiction', 2003, 10, 10),
(142001740, 'The Secret Life of Bees', 14.0, 'Literature & Fiction', 2003, 10, 11),
(596004478, 'Google Hacks', 24.95, 'Computer', 2003, 10, 12),
(71414339, 'Investing in Fixer-Uppers : A Complete Guide to Buying Low, Fixing Smart, Adding Value, and Selling (or Renting) High', 18.95, 'Accounting & Finance', 2003, 10, 13),
(312311354, 'The Pianist', 13.0, 'Literature & Fiction', 2003, 10, 14),
(312287941, 'The Girl in the Red Coat: A Memoir', 25.95, 'Literature & Fiction', 2002, 10, 15),
(312243022, 'The Hours', 3.44, 'Literature & Fiction', 2000, 10, 14),
(609610570, 'Execution: The Discipline of Getting Things Done', 27.5, 'Reference', 2002, 10, 16),
(316602051, 'The Jester', 27.95, 'Literature & Fiction', 2003, 10, 17),
(743222008, 'The Vanished Man: A Lincoln Rhyme Novel', 25.0, 'Literature & Fiction', 2003, 10, 18),
(66214750, 'Twelve Times Blessed', 25.95, 'Literature & Fiction', 2003, 10, 19),
(787960756, 'The Five Dysfunctions of a Team: A Leadership Fable', 13.2, 'Accounting & Finance', 2002, 10, 20),
(743206061, 'The Second Time Around', 26.0, 'Accounting & Finance', 2003, 10, 18),
(1590520734, 'The Rescuer: The O''Malley Series', 12.99, 'Romance', 2003, 10, 21),
(60934417, 'Bel Canto: A Novel', 13.95, 'Romance', 2002, 10, 22),
(440237556, 'The Dark Highlander', 6.99, 'Romance', 2002, 10, 23),
(373272839, 'Letters to Kelly', 4.75, 'Romance', 2003, 10, 24),
(670031518, 'The Blank Slate: The Modern Denial of Human Nature', 27.95, 'Science', 2002, 10, 25),
(738206679, 'Linked: The New Science of Networks', 26.0, 'Science', 2002, 10, 26),
(067976867X, 'Consilience: The Unity of Knowledge', 15.0, 'Science', 1999, 10, 27),
(679450785, 'The Future of Life', 22.0, 'Science', 2002, 10, 28),
(1579550088, 'A New Kind of Science', 44.95, 'Science', 2002, 10, 29),
(684843285, 'ON FOOD AND COOKING', 22.0, 'Science', 1997, 10, 30),
(471358983, 'Building Construction Illustrated', 40.0, 'Home Design', 2000, 10, 3),
(394739698, 'A Field Guide to American Houses', 24.95, 'Home Design', 1984, 10, 31),
(1586851322, 'Prefab', 39.95, 'Home Design', 2002, 10, 32),
(1586851357, 'Cabins & Camps', 60.0, 'Home Design', 2002, 10, 32),
(156158648X, 'The New City Home: Smart Solutions for Metro Living', 24.95, 'Home Design', 2003, 10, 33),
(865659982, 'Composers'' Houses', 50.0, 'Home Design', 1998, 10, 34),
(517576600, 'Color: Natural Palettes for Painted Rooms', 50.0, 'Home Design', 1992, 10, 35),
(262024829, 'Financial Modeling ', 70.0, 'Accounting & Finance', 2000, 10, 36),
(72294337, 'Financial Markets & Corporate Strategy', 122.5, 'Accounting & Finance', 2001, 10, 37),
(72315318, 'Analysis for Financial Management', 79.2, 'Accounting & Finance', 2000, 10, 37),
(324107501, 'Advanced Accounting', 112.95, 'Accounting & Finance', 2001, 10, 38),
(471363049, 'Intermediate Accounting', 139.2, 'Accounting & Finance', 2001, 10, 3),
(130323519, 'Financial Reporting and Analysis ', 126.67, 'Accounting & Finance', 2001, 10, 39),
(446527793, 'The Guardian', 24.95, 'Literature & Fiction', 2003, 10, 40),
(743206061, 'The Second Time Around', 26.0, 'Literature & Fiction', 2003, 10, 18),
(743244249, 'Cosmopolis: A Novel', 25.0, 'Literature & Fiction', 2003, 10, 41),
(743467523, 'Dreamcatcher', 7.99, 'Horror', 2003, 10, 42),
(375703764, 'House of Leaves', 19.95, 'Horror', 2000, 10, 43),
(345452089, 'The Vampire''s Violin', 6.99, 'Horror', 2003, 10, 44),
(385504470, 'Lullaby: A Novel', 17.47, 'Horror', 2002, 10, 45),
(312276702, 'Jinn: A Novel', 24.95, 'Horror', 2003, 10, 15),
(743457358, 'Everything''s Eventual: 14 Dark Tales', 7.99, 'Horror', 2002, 10, 42),
(1880418568, 'Wolves of the Calla ', 35.0, 'Horror', 2003, 10, 46),
(743455967, 'On Writing', 7.99, 'Horror', 2002, 10, 42),
(140077022, 'White Noise ', 14.0, 'Literature & Fiction', 1991, 10, 11),
(679722955, 'The Names', 11.2, 'Literature & Fiction', 1989, 10, 47),
(684848155, 'UNDERWORLD: A NOVEL', 16.0, 'Literature & Fiction', 1998, 10, 48),
(471286168, 'Architecture: Form, Space, and Order', 39.95, 'Home Design', 1996, 10, 3),
(471288217, 'A Visual Dictionary of Architecture', 39.95, 'Home Design', 1996, 10, 3),
(156006219, 'The Magician''s Assistant', 13.0, 'Romance', 1998, 10, 49),
(60540753, 'Patron Saint of Liars', 13.95, 'Romance', 2003, 10, 50),
(393318486, 'How the Mind Works', 17.95, 'Science', 1999, 10, 51),
(60958332, 'The Language Instinct: How the Mind Creates Language', 10.5, 'Science', 2000, 10, 22),
(60958405, 'Words and Rules: The Ingredients of Language', 15.0, 'Science', 2000, 10, 22),
(393319407, 'The Diversity of Life', 16.95, 'Science', 1999, 10, 51),
(067463442X, 'On Human Nature', 18.95, 'Science', 1988, 10, 52),
(446608955, 'A Walk to Remember', 6.99, 'Literature & Fiction', 2000, 10, 40),
(446676098, 'The Notebook', 12.95, 'Literature & Fiction', 1999, 10, 40),
(446606812, 'Message in a Bottle', 7.5, 'Literature & Fiction', 1999, 10, 40),
(262521415, 'Numerical Techniques in Finance', 35.0, 'Accounting & Finance', 1989, 10, 36),
(262232197, 'Econometric Analysis of Cross Section and Panel Data', 74.95, 'Accounting & Finance', 2001, 10, 36),
(324113641, 'Introductory Econometrics: A Modern Approach', 107.95, 'Accounting & Finance', 2002, 10, 38),
(471391123, 'Beyond Coso : Internal Control to Enhance Corporate Governance', 50.0, 'Accounting & Finance', 2000, 10, 3),
(130998516, 'Real World FPGA Design with Verilog', 83.0, 'Computer', 1999, 10, 53),
(1565924916, 'Ldap System Administration', 39.95, 'Computer', 2003, 10, 12),
(735712360, 'The Photoshop Book for Digital Photographers', 39.99, 'Computer', 2003, 10, 54),
(735712379, 'Photoshop 7 Down & Dirty Tricks', 39.99, 'Computer', 2002, 10, 54),
(735713170, 'Mac OS X v. 10.2 Jaguar Killer Tips', 29.99, 'Computer', 2002, 10, 54),
(1558606432, 'Persuasive Technology: Using Computers to Change What We Think and Do', 34.95, 'Computer', 2002, 10, 4),
(72222743, 'A+ Certification All-in-One Exam Guide', 59.99, 'Computer', 2002, 10, 2),
(345409469, 'The Demon-Haunted World: Science As a Candle in the Dark', 14.95, 'Science', 1997, 10, 55),
(375508325, 'Cosmos', 35.0, 'Science', 2002, 10, 27),
(345336895, 'Broca''s Brain: Reflections on the Romance of Science', 6.99, 'Science', 1993, 10, 56),
(671004107, 'Contact', 7.99, 'Science', 1997, 10, 42),
(345376595, 'Pale Blue Dot: A Vision of the Human Future in Space', 12.95, 'Science', 1997, 10, 55),
(316666343, 'The Lovely Bones: A Novel', 21.95, 'Literature & Fiction', 2002, 10, 17),
(316096199, 'Lucky: A Memoir', 11.95, 'Literature & Fiction', 2002, 10, 57),
(038572179X, 'Atonement', 14.0, 'Literature & Fiction', 2003, 10, 58),
(385494246, 'Amsterdam', 12.0, 'Literature & Fiction', 1999, 10, 58),
(385494327, 'Black Dogs', 14.0, 'Literature & Fiction', 1999, 10, 58),
(385494149, 'Enduring Love', 13.0, 'Literature & Fiction', 1999, 10, 58),
(399149848, 'Birthright', 25.95, 'Literature & Fiction', 2003, 10, 59),
(373218192, 'Engaging The Enemy', 7.5, 'Literature & Fiction', 2003, 10, 60),
(373218257, 'Love By Design', 14.95, 'Literature & Fiction', 2003, 10, 24),
(399149392, 'Chesapeake Blue', 25.95, 'Literature & Fiction', 2002, 10, 59),
(1561584029, 'The Complete Illustrated Guide to Furniture and Cabinet Construction', 39.95, 'Home Design', 2001, 10, 33),
(1579902944, 'Choosing & Using Hand Tools', 19.95, 'Home Design', 2002, 10, 61),
(1561586196, 'Building a Shed', 19.95, 'Home Design', 2003, 10, 33),
(61092177, 'Small Gods', 7.99, 'Fantasy', 1994, 10, 62),
(60502935, 'Going Postal', 7.99, 'Fantasy', 2005, 10, 62),
(61020656, 'Pyramids', 7.99, 'Fantasy', 2001, 10, 62),
(60855925, 'The Color of Magic', 13.99, 'Fantasy', 2005, 10, 62),
(61020648, 'Guards! Guards!', 7.99, 'Fantasy', 2001, 10, 62),
(61161721, 'Unseen Academicals', 7.99, 'Fantasy', 2010, 10, 62);

-- Insert data into Written_By table
INSERT INTO Written_By (ISBN, Author_ID) VALUES (782140661, 1),
(72227885, 2),
(471200247, 3),
(72227710, 4),
(1558605525, 5),
(972263608, 6),
(201615762, 7),
(782140114, 8),
(321125169, 9),
(805317554, 10),
(1861004486, 11),
(735712123, 12),
(425188361, 13),
(142001740, 14),
(596004478, 15),
(71414339, 16),
(312311354, 17),
(312287941, 18),
(312243022, 19),
(609610570, 20),
(316602051, 21),
(743222008, 22),
(66214750, 23),
(787960756, 24),
(743206061, 25),
(1590520734, 26),
(60934417, 27),
(440237556, 28),
(373272839, 29),
(670031518, 30),
(738206679, 31),
(067976867X, 32),
(679450785, 32),
(1579550088, 33),
(684843285, 34),
(471358983, 35),
(394739698, 36),
(1586851322, 37),
(1586851357, 38),
(156158648X, 39),
(865659982, 40),
(517576600, 41),
(262024829, 42),
(262024829, 43),
(72294337, 44),
(72315318, 45),
(324107501, 46),
(471363049, 47),
(130323519, 48),
(446527793, 49),
(743206061, 25),
(743244249, 51),
(743467523, 52),
(375703764, 53),
(345452089, 54),
(385504470, 55),
(312276702, 56),
(743457358, 52),
(1880418568, 52),
(743455967, 52),
(140077022, 51),
(679722955, 51),
(684848155, 51),
(471286168, 35),
(471288217, 35),
(156006219, 27),
(60540753, 27),
(393318486, 30),
(60958332, 30),
(60958405, 30),
(393319407, 32),
(067463442X, 32),
(446608955, 49),
(446676098, 49),
(446606812, 49),
(262521415, 42),
(262232197, 62),
(324113641, 62),
(471391123, 63),
(130998516, 64),
(1565924916, 65),
(735712360, 66),
(735712379, 66),
(735713170, 66),
(1558606432, 67),
(72222743, 68),
(345409469, 69),
(375508325, 69),
(345336895, 69),
(671004107, 69),
(345376595, 69),
(316666343, 70),
(316096199, 70),
(038572179X, 72),
(385494246, 72),
(385494327, 72),
(385494149, 72),
(399149848, 73),
(373218192, 73),
(373218257, 73),
(399149392, 73),
(1561584029, 74),
(1579902944, 74),
(1561586196, 75),
(61092177, 76),
(60502935, 76),
(61020656, 76),
(60855925, 76),
(61020648, 76),
(61161721, 76);

