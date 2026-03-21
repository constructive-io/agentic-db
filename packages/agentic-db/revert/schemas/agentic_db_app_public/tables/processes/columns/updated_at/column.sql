-- Revert: schemas/agentic_db_app_public/tables/processes/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".processes 
  DROP COLUMN updated_at RESTRICT;


