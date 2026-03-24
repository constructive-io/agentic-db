-- Revert: schemas/agentic_db_app_public/tables/projects/columns/embedding_stale/alterations/alt0000002832


ALTER TABLE agentic_db_app_public.projects 
  ALTER COLUMN embedding_stale DROP NOT NULL;


