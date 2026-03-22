-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.goal_chunks 
  DROP COLUMN chunk_index RESTRICT;


