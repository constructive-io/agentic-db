-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/title/column


ALTER TABLE "agentic_db_app_public".sessions 
  DROP COLUMN title RESTRICT;


