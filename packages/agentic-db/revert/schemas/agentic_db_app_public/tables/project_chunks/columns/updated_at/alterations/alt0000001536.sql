-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/updated_at/alterations/alt0000001536


ALTER TABLE "agentic_db_app_public".project_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


