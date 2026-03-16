-- Revert: schemas/agentic_db_app_public/tables/tools/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".tools 
  DROP COLUMN updated_at RESTRICT;


