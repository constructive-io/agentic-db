-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/fingerprint_mode/alterations/alt0000004838




ALTER TABLE agentic_db_auth_private.sessions 
    ALTER COLUMN fingerprint_mode DROP DEFAULT;



