-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/fingerprint_mode/alterations/alt0000003451


ALTER TABLE agentic_db_auth_private.sessions 
  ALTER COLUMN fingerprint_mode DROP NOT NULL;


