-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/id/alterations/alt0000001511


ALTER TABLE "agentic_db_app_public".projects_chunks 
  ALTER COLUMN id DROP NOT NULL;


