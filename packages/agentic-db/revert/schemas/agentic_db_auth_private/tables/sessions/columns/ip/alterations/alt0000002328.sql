-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/ip/alterations/alt0000002328




ALTER TABLE agentic_db_auth_private.sessions 
    ALTER COLUMN ip DROP DEFAULT;



