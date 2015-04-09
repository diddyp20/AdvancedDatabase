DROP TABLE playerstats;
DROP TABLE play_events;
DROP TABLE quarter;
DROP TABLE quarter_lookup;
DROP TABLE Game;
DROP TABLE trade;
DROP TABLE Player_history;
DROP TABLE player_Honor;
DROP TABLE players;
DROP TABLE coach_history ;
DROP TABLE Coach_Honor;
DROP TABLE Team_Honor;
DROP TABLE team;
DROP TABLE coach;
DROP TABLE season;
DROP TABLE conference;
DROP TABLE division;
--Drop Sequences
DROP sequence division_seq;
DROP sequence conference_seq;
DROP sequence season_seq;
DROP sequence coach_seq;
DROP sequence team_seq;
DROP sequence team_honor_seq;
DROP sequence Coach_Honor_seq;
DROP sequence players_seq;
DROP sequence player_Honor_seq;
DROP sequence trade_seq;
DROP sequence Game_seq;
DROP sequence quarter_lookup_seq;
DROP sequence quarter_seq;
DROP sequence play_events_seq;
--Create Sequences
--CREATE Division SEQUENCE
CREATE sequence division_seq start with 1 increment BY 1 maxvalue 9999 CYCLE;
  --CREATE Conference SEQUENCE
CREATE sequence conference_seq start with 1 increment BY 1 maxvalue 100 CYCLE;
  --CREATE Season SEQUENCE
CREATE sequence season_seq start with 1 increment BY 1 maxvalue 9999 CYCLE;
  --CREATE COACH SEQUENCE
CREATE sequence coach_seq start with 10 increment BY 10 maxvalue 100000 CYCLE;
  --CREATE TEAM SEQUENCE
CREATE sequence team_seq start with 100 increment BY 1 maxvalue 9999 CYCLE;
  --CREATE TEAM HONOR SEQUENCE
CREATE sequence team_honor_seq start with 1000 increment BY 1 maxvalue 1999 CYCLE;
  --CREATE Coach_Honor SEQUENCE
CREATE sequence Coach_Honor_seq start with 1 increment BY 1 maxvalue 2999 CYCLE;
  --CREATE players SEQUENCE
CREATE sequence players_seq start with 1000 increment BY 1000 maxvalue 1000000000000 CYCLE;
  --CREATE player_Honor SEQUENCE
CREATE sequence player_Honor_seq start with 1 increment BY 1 maxvalue 9999 CYCLE;
  --CREATE trade SEQUENCE
CREATE sequence trade_seq start with 200 increment BY 1 maxvalue 9999 CYCLE;
  --CREATE Game SEQUENCE
CREATE sequence Game_seq start with 1 increment BY 1 maxvalue 9999 CYCLE;
  --CREATE quarter_lookup SEQUENCE
CREATE sequence quarter_lookup_seq start with 1 increment BY 1 maxvalue 100 CYCLE;
  --CREATE quarter SEQUENCE
CREATE sequence quarter_seq start with 100 increment BY 100 maxvalue 10000 CYCLE;
  --CREATE play_events SEQUENCE
CREATE sequence play_events_seq start with 100 increment BY 100 maxvalue 100000000 CYCLE;
  -- division:
  CREATE TABLE division
    (
      Division_Id   INT,
      Division_Name VARCHAR2(50),
      PRIMARY KEY(Division_Id)
    );
  INSERT INTO division VALUES
    (division_seq.nextval, 'Atlantic'
    );
  INSERT INTO division VALUES
    (division_seq.nextval, 'Central'
    );
  INSERT INTO division VALUES
    (division_seq.nextval, 'Southeast'
    );
  INSERT INTO division VALUES
    (division_seq.nextval, 'Northwest'
    );
  INSERT INTO division VALUES
    (division_seq.nextval, 'Pacific'
    );
  INSERT INTO division VALUES
    (division_seq.nextval, 'Southwest'
    );
  --Conference:
  CREATE TABLE conference
    (
      Conference_Id   INT,
      Conference_Name VARCHAR2(50),
      PRIMARY KEY(Conference_Id)
    );
  INSERT INTO conference VALUES
    (conference_seq.nextval, 'Eastern'
    );
  INSERT INTO conference VALUES
    (conference_seq.nextval, 'Western'
    );
  --season:
  CREATE TABLE season
    (
      Season_Id   INT,
      Season_Name VARCHAR2(50),
      Season_year NUMBER,
      PRIMARY KEY(Season_Id)
    );
  INSERT INTO season VALUES
    (season_seq.nextval, 'Regular', 2014
    );
  INSERT INTO season VALUES
    (season_seq.nextval, 'Play-Off', 2014
    );
  INSERT INTO season VALUES
    (season_seq.nextval, 'Regular', 2015
    );
  INSERT INTO season VALUES
    (season_seq.nextval, 'Play-Off', 2015
    );
  --Coach
  CREATE TABLE coach
    (
      Coach_ID     INT,
      Coach_Name   VARCHAR2(50),
      Birthdate    DATE,
      Availability CHAR,
      PRIMARY KEY (Coach_ID)
    );
  --EASTERN CONFERENCE
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Mike Budenholzer',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Brad Stevens',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Lionel Hollins',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Steve Clifford',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Tom Thibodeau',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'David Blatt',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Stan Van Gundy',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Frank Vogel ',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Erik Spoelstra ',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Jason Kidd ',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Derek Fisher ',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'James Borrego ',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Brett Brown  ',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Dwane Casey  ',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Randy Wittman ',
      DATE'1952-9-15',
      'Y'
    );
  --WESTERN CONFERENCE
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Rick Carlisle ',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Brian Shaw',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Steve Kerr',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Kevin McHale',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Doc Rivers',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Byron Scott',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'David Joerger',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Flip Saunders',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Monty Williams',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Scott Brooks',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Jeff Hornacek ',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Terry Stotts',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'George Karl',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Gregg Popovich',
      DATE'1952-9-15',
      'Y'
    );
  INSERT
  INTO coach VALUES
    (
      coach_seq.nextval,
      'Quin Snyder',
      DATE'1952-9-15',
      'Y'
    );
  INSERT INTO coach VALUES
    (9999, NULL, NULL, NULL
    );
  COMMIT;
  --Team
  CREATE TABLE team
    (
      Team_ID       INT,
      Conference_ID INT,
      Division_ID   INT,
      Coach_ID      INT,
      Team_name     VARCHAR2(50),
      No_players    NUMBER,
      PRIMARY KEY(Team_ID),
      FOREIGN KEY(Conference_ID) REFERENCES Conference(Conference_ID),
      FOREIGN KEY(Division_ID) REFERENCES Division(Division_ID),
      FOREIGN KEY(Coach_ID) REFERENCES Coach(Coach_ID)
    );
  --EASTERN CONFERENCE
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      1,
      3,
      10,
      'Atlanta Hawks',
      15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 1, 1, 20, 'Boston Celtics', 15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 1, 1, 30, 'Brooklyn Net', 15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      1,
      3,
      40,
      'Charlotte Hornets',
      15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 1, 2, 50, 'Chicago Bulls', 15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      1,
      2,
      60,
      'Cleveland Cavaliers',
      15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 1, 2, 70, 'Detroit Pistons', 15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 1, 2, 80, 'Indiana Pacers', 15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 1, 3, 90, 'Miami Heat', 15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 1, 2, 100, 'Milwaukee Bucks', 15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 1, 1, 110, 'New York Knicks', 15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 1, 3, 120, 'Orlando Magic', 15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      1,
      1,
      130,
      'Philadelphia 76ers',
      15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 1, 1, 140, 'Toronto Raptors', 15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      1,
      3,
      150,
      'Washington Wizards',
      15
    );
  --WESTERN CONFERENCE
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      2,
      6,
      160,
      'Dallas Mavericks',
      15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 2, 4, 170, 'Denver Nuggets', 15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      2,
      5,
      180,
      'Golden State Warriors',
      15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 2, 6, 190, 'Houston Rockets', 15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 2, 5, 200, 'L.A. Clippers', 15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 2, 5, 210, 'L.A. Lakers', 15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      2,
      6,
      220,
      'Memphis Grizzlies',
      15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      2,
      4,
      230,
      'Minnesota Timberwolves',
      15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      2,
      6,
      240,
      'New Orleans Pelicans',
      15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      2,
      4,
      250,
      'Oklahoma City Thunder',
      15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 2, 5, 260, 'Phoenix Suns', 15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      2,
      4,
      270,
      'Portland Trail Blazers',
      15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      2,
      5,
      280,
      'Sacramento Kings',
      15
    );
  INSERT
  INTO team VALUES
    (
      team_seq.nextval,
      2,
      6,
      290,
      'San Antonio Spurs',
      15
    );
  INSERT INTO team VALUES
    (team_seq.nextval, 2, 4, 300, 'Utah Jazz', 15
    );
  COMMIT;
  --Team_Honor
  CREATE TABLE Team_Honor
    (
      Team_ID       INT,
      Team_Honor_ID INT,
      Honor_list    VARCHAR2(100),
      PRIMARY KEY (Team_Honor_ID),
      FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID)
    );
  INSERT
  INTO Team_Honor VALUES
    (
      100,
      team_honor_seq.nextval,
      'NBA Champions 2014'
    );
  INSERT
  INTO Team_Honor VALUES
    (
      101,
      team_honor_seq.nextval,
      'Conference Champions 2014'
    );
  INSERT
  INTO Team_Honor VALUES
    (
      102,
      team_honor_seq.nextval,
      'Division Champion 2014'
    );
  --Coach_Honor
  CREATE TABLE Coach_Honor
    (
      Coach_ID       INT,
      Coach_Honor_ID INT,
      Honor_List     VARCHAR2(100),
      PRIMARY KEY (Coach_Honor_ID),
      FOREIGN KEY (Coach_ID) REFERENCES Coach(Coach_ID)
    );
  INSERT
  INTO Coach_Honor VALUES
    (
      10,
      Coach_Honor_seq.nextval,
      'Coach of the year 2014'
    );
  INSERT
  INTO Coach_Honor VALUES
    (
      20,
      Coach_Honor_seq.nextval,
      'Conference coach of the year'
    );
  INSERT
  INTO Coach_Honor VALUES
    (
      30,
      Coach_Honor_seq.nextval,
      'Division Champion'
    );
  --Coach_history
  CREATE TABLE coach_history
    (
      Coach_ID         INT,
      Team_ID          INT,
      No_games_coached NUMBER, -- number of games coached
      Games_won        NUMBER, -- number of games won
      Games_lost       NUMBER, -- number of games lost
      Year_managed     NUMBER, --Year coached
      PRIMARY KEY (Coach_ID, Team_ID),
      FOREIGN KEY (Coach_ID) REFERENCES Coach(Coach_ID),
      FOREIGN KEY (Team_ID)REFERENCES Team(Team_ID)
    );
  INSERT INTO coach_history VALUES
    (10,101,100,55,45,1999
    );
  INSERT INTO coach_history VALUES
    (20,102,100,65,35,1998
    );
  INSERT INTO coach_history VALUES
    (30,103,100,75,25, 1987
    );
  --Player
  CREATE TABLE players
    (
      Player_ID    INT, -- player id
      Player_name  VARCHAR2(50),
      Birthdate    DATE,
      Height       NUMBER,
      Weight_lbs   NUMBER,
      Position     VARCHAR2(50),
      Contract_yrs NUMBER,
      Salary       NUMBER,
      Team_ID      INT,
      PRIMARY KEY (Player_ID),
      FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID)
    );
  INSERT
  INTO Players VALUES
    (
      players_seq.nextval,
      'Chandler Tyson',
      DATE'1990-01-21',
      7.1,
      240,
      'C',
      2000,13852363,100
    );
  INSERT
  INTO Players VALUES
    (
      players_seq.nextval,
      'Acy Quincy',
      DATE'1990-10-06',
      6.7,
      225,
      'F',
      3,788872,101
    );
  INSERT
  INTO Players VALUES
    (
      players_seq.nextval,
      'Bass Brandon',
      DATE'1985-04-30',
      6.8,
      250,
      'F',
      3,6450000,102
    );
  INSERT
  INTO Players VALUES
    (
      players_seq.nextval,
      'Anderson Ryan',
      DATE'1988-05-06',
      6.10,
      240,
      'F',
      4,8500000,103
    );
  --Player_Honor
  CREATE TABLE Player_Honor
    (
      Player_ID       INT,
      Player_Honor_ID INT,
      Honor_list      VARCHAR2(50),
      PRIMARY KEY (Player_Honor_ID),
      FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID)
    );
  INSERT
  INTO Player_Honor VALUES
    (
      1000,
      player_Honor_seq.nextval,
      'Season MVP 2014'
    );
  INSERT
  INTO Player_Honor VALUES
    (
      1000,
      player_Honor_seq.nextval,
      'Best Defender 2014'
    );
  -----PLAYER HISTORY
  CREATE TABLE Player_history
    (
      player_id       INT,
      team_id         INT,
      num_game_played NUMBER,
      year_joined     NUMBER,
      PRIMARY KEY (player_id, team_id),
      FOREIGN KEY (player_id) REFERENCES players(player_id),
      FOREIGN KEY(team_id) REFERENCES team(team_id)
    );
  INSERT INTO Player_history VALUES
    (1000, 101, 30, 2000
    );
  INSERT INTO Player_history VALUES
    (2000, 102, 30, 1999
    );
  INSERT INTO Player_history VALUES
    (3000, 103, 30, 2000
    );
  --Trade
  CREATE TABLE trade
    (
      Trade_ID      INT,
      Team_from_ID  INT,
      Team_to_ID    INT,
      Player_ID_1   INT,
      Player_ID_2   INT,
      Trade_Date    DATE,
      Contract_year INT,
      Contract_fees NUMBER,
      PRIMARY KEY(Trade_ID),
      FOREIGN KEY(Player_ID_1) REFERENCES Players(Player_ID),
      FOREIGN KEY(Player_ID_2) REFERENCES Players(Player_ID),
      FOREIGN KEY(Team_from_ID) REFERENCES Team(Team_ID),
      FOREIGN KEY(Team_to_ID) REFERENCES Team(Team_ID)
    );
  INSERT
  INTO Trade VALUES
    (
      trade_seq.nextval,
      100,
      102,
      1000,
      2000,
      DATE'2011-2-7',
      5,
      10000000
    );
  INSERT
  INTO Trade VALUES
    (
      trade_seq.nextval,
      101,
      103,
      2000,
      4000,
      DATE'2015-4-8',
      5,
      10000000
    );
  --Game
  CREATE TABLE Game
    (
      Game_ID         INT,
      Season_ID       INT,
      Game_Date       DATE,
      Home_Team_ID    INT,
      Away_Team_ID    INT,
      Score_Home_team INT,
      Score_Away_team INT,
      Winner_Team_ID  INT,
      PRIMARY KEY (game_ID),
      FOREIGN KEY (season_ID) REFERENCES Season(Season_ID)
    );
  INSERT
  INTO Game VALUES
    (
      Game_seq.nextval,
      1,
      DATE'2011-8-1',
      100,101,99,77,100
    );
  INSERT
  INTO Game VALUES
    (
      Game_seq.nextval,
      2,
      DATE'2012-5-10',
      101,103,102,88,101
    );
  --Quater Lookup
  CREATE TABLE quarter_lookup
    (
      quarter_status      INT,
      quarter_description VARCHAR2(50),
      PRIMARY KEY(quarter_status)
    );
  INSERT INTO quarter_lookup VALUES
    (quarter_lookup_seq.nextval, 'Quarter 1'
    );
  INSERT INTO quarter_lookup VALUES
    (quarter_lookup_seq.nextval, 'Quarter 2'
    );
  INSERT INTO quarter_lookup VALUES
    (quarter_lookup_seq.nextval, 'Quarter 3'
    );
  INSERT INTO quarter_lookup VALUES
    (quarter_lookup_seq.nextval, 'Quarter 4'
    );
  INSERT INTO quarter_lookup VALUES
    (quarter_lookup_seq.nextval, 'Overtime'
    );
  ------Quarter Table
  CREATE TABLE quarter
    (
      Game_ID                     INT,
      Quarter_ID                  INT,
      Quarter_status              INT,
      Home_team_ID                INT,
      Home_Team_pts               INT,
      Home_Team_sht_atmptd        INT,
      Home_Team_total_sht_made    INT,
      Home_Team_3pt_atmptd        INT,
      Home_Team_3pt_made          INT,
      Home_Team_total_rbds        INT,
      Home_Team_steal             INT,
      Home_Team_free_throw_atmptd INT,
      Home_Team_free_throw_made   INT,
      away_team_id                INT,
      Away_Team_pts               INT,
      Away_Team_sht_atmptd        INT,
      Away_Team_total_sht_made    INT,
      Away_Team_3pt_atmptd        INT,
      Away_Team_3pt_made          INT,
      Away_Team_total_rbds        INT,
      Away_Team_steal             INT,
      Away_Team_free_throw_atmptd INT,
      Away_Team_free_throw_made   INT,
      PRIMARY KEY (Quarter_ID),
      FOREIGN KEY(Quarter_status) REFERENCES quarter_lookup(quarter_status),
      FOREIGN KEY(Game_ID) REFERENCES Game(Game_ID)
    );
  INSERT
  INTO quarter VALUES
    (
      1,
      quarter_seq.nextval,
      1,
      100,
      99,
      120,
      30,
      11,3,14,6,12,9,101,
      100,
      121,33,12,4,15,7,13,10
    );
  INSERT
  INTO quarter VALUES
    (
      1,
      quarter_seq.nextval,
      2,
      100,
      99,
      120,
      30,
      11,3,14,6,12,9,102,
      100,
      121,33,12,4,15,7,13,10
    );
  --play_events
  CREATE TABLE play_events
    (
      Player_Event_ID   INT,
      Game_ID           INT,
      Event_Type        VARCHAR2(50),
      Event_Quarter_Id  INT,
      Time_Left         INT,
      Player_ID1        INT,
      Team_ID1          INT,
      Player_ID2        INT,
      Team_ID2          INT,
      Score_After_Event INT,
      PRIMARY KEY(Player_Event_ID),
      FOREIGN KEY(Game_Id) REFERENCES game(game_id),
      FOREIGN KEY(Event_Quarter_Id) REFERENCES Quarter(Quarter_Id),
      FOREIGN KEY(Player_ID1) REFERENCES Players(Player_ID),
      FOREIGN KEY(Team_ID1) REFERENCES Team(Team_ID)
    );
  INSERT
  INTO Play_events VALUES
    (
      play_events_seq.nextval,
      1,
      'Shot',
      100,12,1000,101,2000,102,10
    );
  INSERT
  INTO Play_events VALUES
    (
      play_events_seq.nextval,
      1,
      'Block',
      200,10,1000,101,2000,103,10
    );
  -------------Players Stats
  CREATE TABLE playerstats
    (
      Game_ID            INT,
      Player_ID          INT,
      Team_ID            INT,
      Points             INT, -- Total number of points
      Shots_attempted    INT, -- number of shots attempted
      Shots_made         INT,
      Three_pt_attempted INT, -- number of 3pts attempted
      no_assist_made     INT, --number assists made
      no_3pt_made        INT,
      no_rbnds           INT,
      no_steals          INT,
      no_free_thr_atmptd INT,
      no_free_thr_made   INT,
      no_min_playd       INT,
      PRIMARY KEY(Game_ID,Player_ID,Team_ID),
      FOREIGN KEY (Game_ID) REFERENCES Game(Game_ID),
      FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID),
      FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID)
    );
  INSERT INTO playerstats VALUES
    (1,1000, 100, 30, 10,7,8,5,6,7,4,1,3, 22
    );
  INSERT
  INTO playerstats VALUES
    (
      game_seq.currval,
      2000,
      101,
      40,
      12,9,8,4,9,18,9,3,1,
      22
    );
  COMMIT;
