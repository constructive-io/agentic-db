-- Revert: schemas/agentic_db_app_public/tables/chunks/columns/start_line/column


ALTER TABLE "agentic_db_app_public".chunks 
  DROP COLUMN start_line RESTRICT;


