SELECT a.BREF_ID,
  a."FROM",
  a."TO",
  a."FROM"+ b.rowcnt -1 AS SEASON,
  'https://www.basketball-reference.com/players/'||SUBSTR(a.BREF_ID,0,1)||'/'||a.BREF_ID||'/gamelog/'||(a."FROM"+ b.rowcnt -1)||'/' AS URL
FROM NBA_PLAYERS a,
  (SELECT rownum AS rowcnt FROM nba_players) b
WHERE b.rowcnt <= a."TO"- a."FROM" +1
ORDER BY a.BREF_ID,SEASON ASC