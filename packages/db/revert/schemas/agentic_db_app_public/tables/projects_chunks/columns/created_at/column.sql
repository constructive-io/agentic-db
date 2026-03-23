-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".projects_chunks 
  DROP COLUMN created_at RESTRICT;


