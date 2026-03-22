-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/id/alterations/alt0000001772


ALTER TABLE agentic_db_auth_private.sessions 
  ALTER COLUMN id DROP NOT NULL;


