-- Revert: schemas/agentic_db_auth_private/tables/session_credentials/columns/updated_at/alterations/alt0000002359


ALTER TABLE agentic_db_auth_private.session_credentials 
  ALTER COLUMN updated_at DROP DEFAULT;


