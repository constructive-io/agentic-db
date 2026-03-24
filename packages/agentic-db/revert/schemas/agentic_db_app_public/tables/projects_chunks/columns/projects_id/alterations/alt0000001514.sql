-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/projects_id/alterations/alt0000001514


ALTER TABLE "agentic_db_app_public".projects_chunks 
  ALTER COLUMN projects_id DROP NOT NULL;


