-- Revert: schemas/agentic_db_app_public/tables/lists/columns/created_at/column


ALTER TABLE "agentic_db_app_public".lists 
  DROP COLUMN created_at RESTRICT;


