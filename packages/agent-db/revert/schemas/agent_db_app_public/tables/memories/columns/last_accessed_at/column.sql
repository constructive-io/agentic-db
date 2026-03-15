-- Revert: schemas/agent_db_app_public/tables/memories/columns/last_accessed_at/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN last_accessed_at RESTRICT;


