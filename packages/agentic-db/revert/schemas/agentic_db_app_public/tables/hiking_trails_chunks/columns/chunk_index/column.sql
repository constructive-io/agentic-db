-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  DROP COLUMN chunk_index RESTRICT;


