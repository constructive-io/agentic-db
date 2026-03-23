-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/expires_at/alterations/alt0000002323




ALTER TABLE agentic_db_auth_private.sessions 
    ALTER COLUMN expires_at DROP DEFAULT;



