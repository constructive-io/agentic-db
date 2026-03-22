-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/project_id/alterations/alt0000001832


ALTER TABLE "agentic_db_app_public".project_chunks 
  ALTER COLUMN project_id DROP NOT NULL;


