-- Revert: schemas/agent_db_app_public/tables/memories/columns/active_count/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN active_count RESTRICT;


