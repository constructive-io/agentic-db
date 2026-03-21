-- Revert: schemas/agentic_db_app_public/tables/memories/columns/active_count/column


ALTER TABLE agentic_db_app_public.memories 
  DROP COLUMN active_count RESTRICT;


