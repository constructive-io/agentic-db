-- Revert: schemas/agentic_db_app_public/tables/memories/columns/memory_category/column


ALTER TABLE agentic_db_app_public.memories 
  DROP COLUMN memory_category RESTRICT;


