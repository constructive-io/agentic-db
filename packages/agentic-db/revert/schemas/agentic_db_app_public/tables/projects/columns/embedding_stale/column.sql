-- Revert: schemas/agentic_db_app_public/tables/projects/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.projects 
  DROP COLUMN embedding_stale RESTRICT;


