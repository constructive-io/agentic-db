-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/updated_at/alterations/alt0000003158


ALTER TABLE agentic_db_auth_private.sessions 
  ALTER COLUMN updated_at DROP DEFAULT;


