
  
    

        create or replace transient table dev.analytics.session_summary
         as
        (WITH u AS (
    SELECT * FROM dev.analytics.user_session_channel
), st AS (
    SELECT * FROM dev.analytics.session_timestamp
)
SELECT 
    u.userId, 
    u.sessionId, 
    u.channel, 
    st.ts
FROM u
JOIN st ON u.sessionId = st.sessionId
        );
      
  