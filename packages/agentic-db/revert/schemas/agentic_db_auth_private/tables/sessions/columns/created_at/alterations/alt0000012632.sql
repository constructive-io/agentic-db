-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/created_at/alterations/alt0000012632


ALTER TABLE agentic_db_auth_private.sessions 
  ALTER COLUMN created_at DROP DEFAULT;


