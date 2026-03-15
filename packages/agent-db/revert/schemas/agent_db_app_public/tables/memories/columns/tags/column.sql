-- Revert: schemas/agent_db_app_public/tables/memories/columns/tags/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN tags RESTRICT;


