-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.touchpoints 
  DROP COLUMN embedding_stale RESTRICT;


