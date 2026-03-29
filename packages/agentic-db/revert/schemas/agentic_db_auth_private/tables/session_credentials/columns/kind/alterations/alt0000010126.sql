-- Revert: schemas/agentic_db_auth_private/tables/session_credentials/columns/kind/alterations/alt0000010126




ALTER TABLE agentic_db_auth_private.session_credentials 
    ALTER COLUMN kind DROP DEFAULT;



