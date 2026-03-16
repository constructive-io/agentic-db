-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/created_at/column


ALTER TABLE "agentic_db_app_public".workflows 
  DROP COLUMN created_at RESTRICT;


