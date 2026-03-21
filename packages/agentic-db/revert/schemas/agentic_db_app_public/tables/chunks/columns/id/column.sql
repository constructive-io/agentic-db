-- Revert: schemas/agentic_db_app_public/tables/chunks/columns/id/column


ALTER TABLE "agentic_db_app_public".chunks 
  DROP COLUMN id RESTRICT;


