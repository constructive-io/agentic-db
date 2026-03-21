-- Revert: schemas/agentic_db_app_public/tables/memories/columns/memory_type/column


ALTER TABLE agentic_db_app_public.memories 
  DROP COLUMN memory_type RESTRICT;


