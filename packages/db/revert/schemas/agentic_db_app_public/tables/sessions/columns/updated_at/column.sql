-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".sessions 
  DROP COLUMN updated_at RESTRICT;


