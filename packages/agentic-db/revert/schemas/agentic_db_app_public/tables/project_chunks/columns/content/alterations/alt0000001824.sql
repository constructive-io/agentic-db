-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/content/alterations/alt0000001824


ALTER TABLE "agentic_db_app_public".project_chunks 
  ALTER COLUMN content DROP NOT NULL;


