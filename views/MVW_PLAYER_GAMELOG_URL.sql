SELECT 'https://www.basketball-reference.com/players/'||SUBSTR(BREF_ID,0,1)||'/'||BREF_ID||'/gamelog/'||("FROM"+LEVEL-1)||'/' as URL, BREF_ID FROM PLAYERS
CONNECT BY LEVEL <= ("TO" - "FROM")+1;