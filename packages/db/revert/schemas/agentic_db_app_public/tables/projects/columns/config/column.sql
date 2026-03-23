-- Revert: schemas/agentic_db_app_public/tables/projects/columns/config/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN config RESTRICT;


