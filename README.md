# AdvancedDatabase
UMBC IS620 --- Designing an NBA statistical suite

IS 620 Advanced Database Projects

National Basketball Association Statistical Database Project



Your assignment is to design a statistical database for National Basketball Association. The 

database will be used to store statistics about teams, players, coaches, and games. You will 

design the database, insert some sample data, and implement a set of required features. 

Each feature will be implemented as one or more Oracle PL/SQL procedures. You do NOT 

need to write a graphic user interface. 

You can make the following assumptions in this project. 

1. The system needs to store data about teams, coaches, players, games, trades, and 

statistics about games (at player level, quarter level, and play-by-play events). 

2. NBA has two conferences (eastern and western) and each conference has three 

divisions. Each team belongs to a division.

3. NBA has regular and playoff seasons. In regular season each team plays equal 

number of home and away games. 

4. At the end of a regular season, each conference has eight teams qualified for the 

playoff: the top teams in each division (three of them), and the five teams with the 

best record (in terms of percentage of games won) in the remaining teams. In first 

round of playoff the top four teams (the three division winners and the team with 

the best record in remaining teams) are seeded one to four (sorted by number of 

wins) and the remaining four are sorted by number of wins as well. Seed 1 team will 

play with Seed 8, Seed 2 will play with Seed 7, and so on. The playoff continues until 

the champion of the eastern conference plays the champion of the western 

5. Each team has a head coach and a number of players, and a list of honors of the 

team. The team honors include: NBA champion in a given year, conference 

champion in a given year. 

6. Each coach has a name, birthdate, a history of coaching (the teams they coach and 

the period of each team they coach), and a list of honors (coach of the year)

7. Each player has a name, some data about the player (birthdate, height, weight, 

position), and a list of player honors (regular season MVP, final MVP, NBA 

championship titles), and information about his current contract (including period 

8. The database stores trading data. A trade typically occurs between two teams, with 

a group of players from each team being exchanged. 

9. Each game has a date of game, home team, away team, regular or playoff (if playoff, 

which round), scores of each team. 

10. The database stores statistics about a player in a game, including number of points, 

number of shots (excluding free throws) attempted and number of shots made, 

number of three points shot made and attempted, number of rebounds, number of 

steals, number of free throws attempted and made, and number of minutes played. 

11. The database stores quarter level statistics. Each game has four 12 minute quarters 

and zero or more overtime if the scores at the end of fourth quarter are a tie. The 

database also stores statistics in each quarter and overtime. These statistics are 

similar to those listed in Assumption 10 but at a team and quarter level.

12. The database also stores play-by-play details (events in the game) for each game. 

This includes event type (shot made, shot missed, turnover, foul, free throw, 

replacement, time out, rebound), event time (which quarter or overtime, how many 

minutes and seconds left in the quarter), player 1’s ID (the one who makes the shot, 

turns the ball over, makes the foul, enters the game, etc.), player 2’s ID if any (the 

one who steals the ball in a turnover, who gets fouled, leaves the game), points made 

(in case it is a shot or free throw), current score of the game (after a shot). The play-

by-play data can be used to derive more detailed statistics (e.g., points made by a 

player in a quarter). 

13. To compute the features listed below, you may create additional tables to simplify 

your computation. You may also need to use varray data type in your code.

1. A team signs a player with a new contract. The player will be added to the team if he 

is not a member of the team before. The contract includes the period and salary per 

2. Record a trade between two teams, including the date of trade, the list of players to 

exchange from each team. You can assume that the contracts of players involved will 

3. Allow a team to hire or fire the head coach. 

4. Enter a new game into the database. The input includes information about the game, 

statistics about each quarter and overtime (if any) (see Assumption 11).

5. Enter a player’s statistics in a game (see Assumption 10 for details).

6. Enter a play-by-play event into the database. Your program needs to handle all 

possible events listed in assumption 12.

7. Compute the current ranking of teams in each conference. The ranking is based on 

percentage of games won. Please also indicate the three division leaders in each 

conference as well as percentage of games won.

8. At the end of a regular season, compute the teams qualified for the playoff as well as 

first round pairing of teams (seed 1 vs. seed 8, etc.).

9. Compute a player’s overall statistics for a given regular or playoff season. These 

statistics are the same as listed in Assumption 10 but averaged per game (e.g., 

number of points per game, etc.).

10. Return the top X (X is an input) players in a given year (including both regular and 

playoff) in each of the following category: points per game, 3-pointers made per 

game, assists per game, steals per game, rebounds per game. 

11. Return the top X (X is an input) players in whole career (including both regular and 

playoff) in each of the following category: points per game, 3-pointers made per 

game, assists per game, steals per game, rebounds per game. 

12. Return the top X teams with the most NBA championship titles. 

13. Find a coach who is currently not hired by any teams but has the best winning 

record (in terms of percentage of games won) among unemployed coaches.

14. Show statistics of a quarter in a game, including quarter level statistics listed in 

Assumption 11 and statistics of a player in that quarter (same as listed in 

Assumption 10 but at quarter level), which can be computed using play-by-play 

15. Given a team and a year, compute the longest winning streak (consecutive games 

won) of the team in regular season of that year. Print out the length of the winning 

streak and the start date and end date. 

There will be 4 deliverables. The first three will be due before class starts on the due 

date. Delayed submission will result in a penalty of 30% of your score (e.g., if your score 

for part 2 is 20 but you are late, your score will be 14). The final presentation is due at 

class time and no delay is allowed.

1. 10%. Due 2/11. Project Management Schedule. 

a. Include team members and a timeline showing each phase of your project 

b. It is expected that every member should participate in all phases of the 

c. Each task in the same phase may be assigned to different members. E.g., you 

d. Tasks should include system design, populating tables, writing code, testing 

with its tasks and time duration, for the entire effort. 

project. For example, every member should be involved in writing the code.

can specify that features 1-5 are assigned to member X. 

code, running example queries, writing documents, preparing for 

presentation, etc. Smaller milestones shall be set for deliverable 3 and 4. 

e. This deliverable will be graded based on whether items a) to d) are included 

and whether the schedule is reasonable (e.g., enough time is left for testing 

and integration).

2. 25%. Due 3/11. Design Document which includes the following:

a. ER diagram of the database. You don’t have to follow exact notations of ER 

diagram, but need to show tables, columns, primary keys, and foreign key 

b. SQL statements to create database tables and to insert some sample data (at 

least 5 rows per table). 

c. Specification for each required feature. The specification should include a 

description of input parameters and output (usually screen outputs), and an 

example of how a user can use this feature (e.g., exec XXX(…) where XXX is 

the procedure name). You don’t need to implement any of these features at 

3. 30%. Due 5/18. Demonstration. Your work will be demonstrated to the class in real 

time, where you will present the design of your system and you will run a demo. You 

don’t need to submit anything.

4. 35% Due 5/18. Software code of your project, properly documented. Please submit 

print-out of your code and include create table statements.

What I look for while grading software code (deliverable 4):

2. Comments: Both descriptive and inline for every procedure/function

a. Whether it is correct.

b. Whether it is complete and clear. 

c. Efficiency of code. You shall not use too many SQL statements, and you shall 

put as much work as possible in SQL. For example, if you can do a join, do 

not use two select statements and then do a join in your program.

d. Whether it has considered all special cases such as a player is already a 

member of a team in Feature 1.

Regarding the presentation of your project: Each student must participate in the project 

demonstration by presenting to the entire class some slides. You will be graded on:

1. Timeliness of presentation

2. Organization of the presentation

3. Delivery of your talk

4. Demo (running the code)

For the demo, you will be graded on the following items:

1. Existence of tables and data. You need to have at least 5 rows in each table.

2. The correctness of features. This can be shown by checking whether the screen 

output is correct and the database has been updated correctly.

Each member of the team shall contribute more or less equally. It is unfair for a few 

members to do most of the work while others do less. You will be asked to evaluate your 

teammate’s effort at the end of the project. The instructor will adjust the grade based on the 

evaluation. Normally if most of your teammates agree that you do not contribute at all or 

contribute too little (e.g., your group has 4 members and you contribute only 5%), you may 

lose up to 80% of your project grade. If your teammates agree that you contribute much 

more than anyone else (e.g., your group has 4 members and you contribute 40%), you may 

gain up to 20% of your project grade (but not exceeding 100% of project grade). A peer 

evaluation will be conducted at the end of the semester to determine the contribution of 

1. Be aware of you and your team members’ strengths and limitations. Some of you 

may have very little programming experiences, and some of you do. So each team 

shall have at least 2 people who are good at programming. Each team can discuss 

how to assign the workload fairly and at the same time matching the strengths of 

team members. Usually easier features can be assigned to members without much 

programming experience (they should take more responsibility on non 

programming part to ensure equal contribution). However, every member should 

write some code (2-3 features at minimal). 

2. Start early. Do not wait until last month to start coding. Do not wait until one week 

before the demo to start putting things together. Past experiences show that more 

than 50% of time shall be devoted to testing and putting things together.

3. Learn how to debug SQL and PL/SQL code. You can insert screen output statements 

to check intermediate results. Oracle also returns error messages and error code. 

You can google the error messages and error code to find possible causes. You may 

also use Oracle SQL Developer which allows you to insert break points during 

4. Use homework, in class exercises, and programs in slides as templates of your 

PL/SQL program. For example, if you need to write a cursor, find a cursor example 

and use it as a starting point.
