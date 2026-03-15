-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/ip/alterations/alt0000000616




ALTER TABLE agent_db_auth_private.sessions 
    ALTER COLUMN ip DROP DEFAULT;



