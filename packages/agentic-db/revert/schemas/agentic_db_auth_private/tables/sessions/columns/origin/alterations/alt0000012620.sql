-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/origin/alterations/alt0000012620




ALTER TABLE agentic_db_auth_private.sessions 
    ALTER COLUMN origin DROP DEFAULT;



