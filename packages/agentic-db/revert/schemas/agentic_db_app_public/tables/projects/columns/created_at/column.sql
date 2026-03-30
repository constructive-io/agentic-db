-- Revert: schemas/agentic_db_app_public/tables/projects/columns/created_at/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN created_at RESTRICT;


