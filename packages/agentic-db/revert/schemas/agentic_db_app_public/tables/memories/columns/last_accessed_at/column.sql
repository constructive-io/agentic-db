-- Revert: schemas/agentic_db_app_public/tables/memories/columns/last_accessed_at/column


ALTER TABLE agentic_db_app_public.memories 
  DROP COLUMN last_accessed_at RESTRICT;


