-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/created_at/alterations/alt0000001606


ALTER TABLE "agentic_db_app_public".projects_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


