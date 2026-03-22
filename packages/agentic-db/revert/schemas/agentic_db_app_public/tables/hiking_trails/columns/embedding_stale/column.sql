-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.hiking_trails 
  DROP COLUMN embedding_stale RESTRICT;


