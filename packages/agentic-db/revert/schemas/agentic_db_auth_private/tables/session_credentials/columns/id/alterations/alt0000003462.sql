-- Revert: schemas/agentic_db_auth_private/tables/session_credentials/columns/id/alterations/alt0000003462




ALTER TABLE agentic_db_auth_private.session_credentials 
    ALTER COLUMN id DROP DEFAULT;



