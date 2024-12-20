USE [libDatabase]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 15.12.2024 16:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[HireDate] [date] NOT NULL,
	[AdminPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Admins__719FE4E895B961D7] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 15.12.2024 16:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [varchar](50) NULL,
	[Author] [varchar](50) NULL,
	[Genre] [varchar](50) NULL,
	[detail] [varchar](7999) NULL,
	[PhotoUrl] [nvarchar](2550) NULL,
	[BookStatus] [nvarchar](15) NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Borrowings]    Script Date: 15.12.2024 16:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borrowings](
	[BorrowID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[BorrowDate] [date] NOT NULL,
	[ReturnDate] [date] NULL,
	[Status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BorrowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 15.12.2024 16:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NULL,
	[JoinDate] [date] NULL,
	[MemberPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 15.12.2024 16:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Position] [varchar](100) NOT NULL,
	[HireDate] [date] NOT NULL,
	[AdminID] [int] NULL,
 CONSTRAINT [PK__Staff__96D4AAF72BBDB8C7] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminID], [Name], [Email], [Phone], [HireDate], [AdminPassword]) VALUES (1, N'yunusemre', N'swe@gmail.com', N'5071063431', CAST(N'2024-11-27' AS Date), N'swe')
INSERT [dbo].[Admins] ([AdminID], [Name], [Email], [Phone], [HireDate], [AdminPassword]) VALUES (1002, N'kadir', N'kadiryıldız@gmail.com', N'5071062365', CAST(N'2024-11-28' AS Date), N'swe')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1048, N'To Kill a Mockingbird', N'Harper Lee', N'Fiction, Drama', N'A gripping story set in the Deep South during the 1930s, dealing with themes of racial injustice, moral growth, and compassion through the eyes of young Scout Finch.', N'/media/To Kill a Mockingbird.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1049, N'The Catcher in the Rye', N'J.D. Salinger', N'Literature', N'A young Holden Caulfield narrates his struggle with isolation, alienation, and the complexities of adulthood as he wanders through New York City.', N'/media/The Catcher in the Rye.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1050, N'1984', N'George Orwell', N'Dystopian', N'A dystopian novel that explores the terrifying consequences of totalitarianism, surveillance, and loss of personal freedoms in a society controlled by "Big Brother."', N'/media/1984.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1051, N'Brave New World', N'Aldous Huxley', N'Science Fiction', N'Set in a futuristic society that values conformity and instant pleasure, this novel critiques the dangers of a world dominated by technology, consumerism, and lack of individual thought.', N'/media/Brave New World.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1052, N'The Hobbit', N'J.R.R. Tolkien', N'Fantasy', N'The prequel to "The Lord of the Rings," this novel follows Bilbo Baggins, a hobbit, on an epic adventure with dwarves to reclaim a stolen treasure guarded by a dragon.', N'/media/The Hobbit.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1053, N'Pride and Prejudice', N'Jane Austen', N'Romance', N'A classic romance that explores themes of social class, love, and misunderstandings between Elizabeth Bennet and the wealthy, aloof Mr. Darcy.', N'/media/Pride and Prejudice.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1054, N'Catch-22', N'Joseph Heller', N'Satire', N'Set during World War II, this satirical novel follows Captain Yossarian as he grapples with the absurdities of war, bureaucracy, and the "Catch-22" that governs his survival.', N'/media/Catch-22.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1055, N'Moby Dick', N'Herman Melville', N'Adventure', N'A complex narrative about Captain Ahab''s obsessive quest to hunt down the elusive white whale, Moby Dick, which explores themes of fate, vengeance, and the sea.', N'/media/Moby-Dick.jpg', N'Borrowed')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1056, N'The Road', N'Cormac McCarthy', N'Post-Apocalyptic', N'A father and son travel through a post-apocalyptic world, struggling to survive and maintain their humanity amidst the bleak, devastated landscape.', N'/media/The Road.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1057, N'Crime and Punishment', N'Fyodor Dostoevsky', N'Philosophical Fiction', N'A philosophical novel about Rodion Raskolnikov, a young man who commits a crime and battles with guilt, morality, and the consequences of his actions.', N'/media/Crime and Punishment.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1058, N'The Brothers Karamazov', N'Fyodor Dostoevsky', N'Psychological Fiction', N'A deep exploration of faith, doubt, and morality, this novel follows the lives of three brothers as they navigate their complex relationships with their father and each other.', N'/media/The Brothers Karamazov.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1059, N'Animal Farm', N'GeorgeOrwell', N'Political Satire', N'A political allegory about a group of farm animals who overthrow their human owner, only to find themselves under the tyranny of one of their own, revealing the corrupting nature of power.', N'/media/Animal Farm.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1060, N'The Alchemist', N'Paulo Coelho', N'Philosophical Fiction', N'A philosophical novel that follows Santiago, a shepherd, on a journey to find his personal legend and treasure, teaching lessons about pursuing dreams and the wisdom of the universe.', N'/media/The Alchemist.jpg', N'Borrowed')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1061, N'The Lord of the Rings', N'J.R.R. Tolkien', N'Fantasy', N'A high-fantasy epic about the journey of a hobbit named Frodo Baggins to destroy a powerful ring that could bring about the end of the world.', N'/media/The Lord of the Rings.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1062, N'Frankenstein', N'Mary Shelley', N'Gothic Fiction', N'The story of a scientist, Victor Frankenstein, who creates a living being from body parts, only to face the consequences of his hubris when the creature turns monstrous.', N'/media/Frankenstein.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1063, N'Jane Eyre', N'Charlotte Brontë', N'Romantic Fiction', N'A coming-of-age novel about an orphaned girl, Jane Eyre, who grows up to become a governess and develops a complicated romance with the enigmatic Mr. Rochester.', N'/media/Jane Eyre.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1064, N'Wuthering Heights', N'Emily Brontë', N'Gothic Fiction', N'A dark and passionate tale of the destructive love between Heathcliff and Catherine Earnshaw, set on the remote Yorkshire moors.', N'/media/Wuthering Heights.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1065, N'The Great Gatsby', N'F. Scott Fitzgerald', N'Classic', N'A critique of the American Dream, this novel follows the tragic love story of Jay Gatsby and Daisy Buchanan amidst the glamour and excesses of the 1920s.', N'/media/The Great Gatsby.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1075, N'The Odyssey', N'Homer', N'Epic', N'The epic tale of Odysseus'' long journey home after the Trojan War, filled with gods, monsters, and adventures, illustrating themes of perseverance and homecoming.', N'/media/The Odyssey.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1077, N'The Picture of Dorian Gray', N'Oscar Wilde', N'Philosophical Fiction', N'A tale of a young man who sells his soul for eternal youth and beauty, exploring themes of morality, hedonism, and the cost of vanity.', N'/media/Dorian Gray.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1078, N'Les Misérables', N'Victor Hugo', N'Historical Fiction', N'Set in post-revolutionary France, this novel follows the life of ex-convict Jean Valjean and his quest for redemption amidst social injustice.', N'/media/Les Misérables.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1079, N'Fahrenheit 451', N'Ray Bradbury', N'Dystopian', N'In a future society where books are banned and burned, a fireman questions his role and seeks knowledge in a world of ignorance.', N'/media/Fahrenheit 451.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1080, N'Dracula', N'Bram Stoker', N'Gothic Fiction', N'The classic tale of Count Dracula and his attempt to spread his undead curse to Victorian England.', N'/media/Dracula.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1081, N'A Tale of Two Cities', N'Charles Dickens', N'Historical Fiction', N'A gripping story of love, sacrifice, and revolution set against the backdrop of the French Revolution.', N'/media/A Tale of Two Cities.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1082, N'The Shining', N'Stephen King', N'Horror', N'A haunting story about a family isolated in a snowbound hotel, where sinister forces manipulate them.', N'/media/The Shining.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1083, N'The Kite Runner', N'Khaled Hosseini', N'Drama', N'A moving tale of friendship, betrayal, and redemption set in Afghanistan during times of political upheaval.', N'/media/The Kite Runner.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1084, N'Slaughterhouse-Five', N'Kurt Vonnegut', N'Satire', N'A darkly comedic and anti-war novel about Billy Pilgrim, a man unstuck in time, experiencing World War II and alien abduction.', N'/media/Slaughterhouse-Five.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1085, N'The Divine Comedy', N'Dante Alighieri', N'Epic Poetry', N'An allegorical journey through Hell, Purgatory, and Heaven, exploring themes of sin, redemption, and divine love.', N'/media/The Divine Comedy.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1086, N'The Grapes of Wrath', N'John Steinbeck', N'Historical Fiction', N'A powerful story about the struggles of a poor family during the Great Depression, highlighting themes of poverty and resilience.', N'/media/The Grapes of Wrath.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1087, N'Don Quixote', N'Miguel de Cervantes', N'Classic', N'The story of a delusional knight-errant and his loyal squire, exploring themes of idealism and reality.', N'/media/Don Quixote.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1088, N'The Stranger', N'Albert Camus', N'Philosophical Fiction', N'A philosophical exploration of absurdity and existentialism through the life of an emotionally detached man.', N'/media/The Stranger.jpg', N'Shelf')
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [Genre], [detail], [PhotoUrl], [BookStatus]) VALUES (1089, N'One Hundred Years of Solitude', N'Gabriel García Márquez', N'Magical Realism', N'A multi-generational tale of the Buendía family in the fictional town of Macondo, blending reality and fantasy.', N'/media/One Hundred Years of Solitude.jpg', N'Shelf')
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Borrowings] ON 

INSERT [dbo].[Borrowings] ([BorrowID], [MemberID], [BookID], [BorrowDate], [ReturnDate], [Status]) VALUES (2025, 6, 1055, CAST(N'2024-12-15' AS Date), CAST(N'2024-12-17' AS Date), N'Borrowed')
INSERT [dbo].[Borrowings] ([BorrowID], [MemberID], [BookID], [BorrowDate], [ReturnDate], [Status]) VALUES (2026, 6, 1060, CAST(N'2024-12-15' AS Date), CAST(N'2024-12-20' AS Date), N'Borrowed')
SET IDENTITY_INSERT [dbo].[Borrowings] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 

INSERT [dbo].[Members] ([MemberID], [Name], [Email], [Phone], [JoinDate], [MemberPassword]) VALUES (6, N'ömer', N'omer@gmail.com.tr', N'05074567890', NULL, N'123')
INSERT [dbo].[Members] ([MemberID], [Name], [Email], [Phone], [JoinDate], [MemberPassword]) VALUES (1011, N'Kadir', N'kadir@example.com', N'05412345678', CAST(N'2024-12-01' AS Date), N'12345')
INSERT [dbo].[Members] ([MemberID], [Name], [Email], [Phone], [JoinDate], [MemberPassword]) VALUES (1013, N'Fevzi', N'fevzi@example.com', N'05412345680', CAST(N'2024-12-01' AS Date), N'12345')
INSERT [dbo].[Members] ([MemberID], [Name], [Email], [Phone], [JoinDate], [MemberPassword]) VALUES (1014, N'Arif', N'arif@example.com', N'05412345681', CAST(N'2024-12-19' AS Date), N'1234567')
INSERT [dbo].[Members] ([MemberID], [Name], [Email], [Phone], [JoinDate], [MemberPassword]) VALUES (1015, N'Gökçe', N'gokce@example.com', N'05412345682', NULL, N'123456789')
INSERT [dbo].[Members] ([MemberID], [Name], [Email], [Phone], [JoinDate], [MemberPassword]) VALUES (1018, N'Fevzi', N'fevzi@example.com', N'05412345680', CAST(N'2024-12-01' AS Date), N'12345')
INSERT [dbo].[Members] ([MemberID], [Name], [Email], [Phone], [JoinDate], [MemberPassword]) VALUES (1019, N'Arif', N'arif@example.com', N'05412345681', CAST(N'2024-12-01' AS Date), N'12345')
INSERT [dbo].[Members] ([MemberID], [Name], [Email], [Phone], [JoinDate], [MemberPassword]) VALUES (1020, N'Gökçe', N'gokce@example.com', N'05412345682', CAST(N'2024-12-01' AS Date), N'12345')
INSERT [dbo].[Members] ([MemberID], [Name], [Email], [Phone], [JoinDate], [MemberPassword]) VALUES (2025, N'özgür kılbaş', N'ozgur@gmail.com', N'05071069988', NULL, N'özgür')
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
ALTER TABLE [dbo].[Borrowings]  WITH CHECK ADD  CONSTRAINT [FK__Borrowing__BookI__3F466844] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[Borrowings] CHECK CONSTRAINT [FK__Borrowing__BookI__3F466844]
GO
ALTER TABLE [dbo].[Borrowings]  WITH CHECK ADD  CONSTRAINT [FK__Borrowing__Membe__403A8C7D] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[Borrowings] CHECK CONSTRAINT [FK__Borrowing__Membe__403A8C7D]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK__Staff__AdminID__412EB0B6] FOREIGN KEY([AdminID])
REFERENCES [dbo].[Admins] ([AdminID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK__Staff__AdminID__412EB0B6]
GO
