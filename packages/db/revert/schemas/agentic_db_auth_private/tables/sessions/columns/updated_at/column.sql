-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/updated_at/column


ALTER TABLE "agentic_db_auth_private".sessions 
  DROP COLUMN updated_at RESTRICT;


