CREATE OR REPLACE
PROCEDURE Current_Ranking(
    Year_season IN NUMBER)
AS
  sea_id season.season_id%type;
BEGIN
  --get the season ID to use to create the views
  SELECT season_id
  INTO sea_id
  FROM season
  WHERE season_year      = year_season
  AND lower(season_name) = 'regular';
  dbms_output.put_line('  ');
  dbms_output.put_line('#############################################################################################');
  dbms_output.put_line('##      NATIONAL          BASKETBALL             ASSOCIATION             STATISTICS        ##');
  dbms_output.put_line('#       REGULAR       SEASON     OVERALL    RANKING    AND    DIVISION     LEADERS          #');
  dbms_output.put_line('#                                         '||year_season||'                                              #');
  dbms_output.put_line('#############################################################################################');
  --Display the Eastern Conference Standing
  dbms_output.put_line('  ');
  dbms_output.put_line('Current Standing for the Eastern Confernce');
  dbms_output.put_line('  ');
  dbms_output.put_line('Division    '||'  TEAM NAME    '|| 'Games Played   '|| 'Games Won  ' || '% Games Won');
  dbms_output.put_line('  ');
  FOR CUR_VAL IN
  (SELECT * FROM ranking_view WHERE season_id = sea_id AND conference_id = 1
  )
  LOOP
    dbms_output.put_line(cur_val.division_name||'   '||cur_val.team_name||'         '||cur_val.game_played||'          '||cur_val.winning_count||'          '||cur_val.pct_win);
  END LOOP;
  dbms_output.put_line('  ');
  dbms_output.put_line('#############################################################################################');
  --Display the Western Conference Standing
  dbms_output.put_line('  ');
  dbms_output.put_line('Current Standing for the Western Confernce');
  dbms_output.put_line('  ');
  dbms_output.put_line('Division    '||'  TEAM NAME    '|| 'Games Played   '|| 'Games Won  ' || '% Games Won');
  dbms_output.put_line('  ');
  FOR CUR_VAL2 IN
  (SELECT * FROM ranking_view WHERE season_id = sea_id AND conference_id = 2
  )
  LOOP
    dbms_output.put_line(cur_val2.division_name||'   '||cur_val2.team_name||'         '||cur_val2.game_played||'          '||cur_val2.winning_count||'          '||cur_val2.pct_win);
  END LOOP;
  dbms_output.put_line('  ');
  dbms_output.put_line('#############################################################################################');
  --LOOP for Top3 in Easter Conference
  dbms_output.put_line('  ');
  dbms_output.put_line('Top 3 Eastern Confernce Leaders');
  dbms_output.put_line('  ');
  dbms_output.put_line('Division    '||'  TEAM NAME    '|| 'Games Played   '|| 'Games Won  ' || '% Games Won');
  dbms_output.put_line('  ');
  FOR TOP3_VAL_EAST IN
  (SELECT            *
  FROM
    (SELECT conference_id,
      conference_name,
      season_id,
      division_id,
      division_name,
      team_id,
      team_name,
      game_played,
      winning_count,
      pct_win,
      row_number() over (partition BY division_id order by pct_win DESC)rn
    FROM ranking_view
    )
  WHERE season_id   = sea_id
  AND conference_id = 1
  AND rn            < 4
  ORDER BY division_id
  )
  LOOP
    dbms_output.put_line(TOP3_VAL_EAST.division_name||'   '||TOP3_VAL_EAST.team_name||'         '||TOP3_VAL_EAST.game_played||'         '||TOP3_VAL_EAST.winning_count||'            '||TOP3_VAL_EAST.pct_win||'%');
  END LOOP;
  dbms_output.put_line('  ');
  dbms_output.put_line('#############################################################################################');
  --LOOP for Top3 in Western Conference
  dbms_output.put_line('  ');
  dbms_output.put_line('Top 3 Western Confernce Leaders');
  dbms_output.put_line('  ');
  dbms_output.put_line('Division    '||'  TEAM NAME    '|| 'Games Played   '|| 'Games Won  ' || '% Games Won');
  dbms_output.put_line('  ');
  FOR TOP3_VAL_EAST IN
  (SELECT            *
  FROM
    (SELECT conference_id,
      conference_name,
      season_id,
      division_id,
      division_name,
      team_id,
      team_name,
      game_played,
      winning_count,
      pct_win,
      row_number() over (partition BY division_id order by pct_win DESC)rn
    FROM ranking_view
    )
  WHERE season_id   = sea_id
  AND conference_id = 2
  AND rn            < 4
  ORDER BY division_id
  )
  LOOP
    dbms_output.put_line(TOP3_VAL_EAST.division_name||'   '||TOP3_VAL_EAST.team_name||'         '||TOP3_VAL_EAST.game_played||'         '||TOP3_VAL_EAST.winning_count||'            '||TOP3_VAL_EAST.pct_win||'%');
  END LOOP;
  dbms_output.put_line('  ');
  dbms_output.put_line('########################### END     OF     REPORT ###############################');
EXCEPTION
WHEN no_data_found THEN
  dbms_output.put_line('Sorry, there is no regular season played in '||Year_season||'!');
WHEN OTHERS THEN
  dbms_output.put_line('Something funky happened');
END;
