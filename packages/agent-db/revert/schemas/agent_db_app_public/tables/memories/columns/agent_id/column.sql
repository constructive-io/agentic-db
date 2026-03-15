-- Revert: schemas/agent_db_app_public/tables/memories/columns/agent_id/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN agent_id RESTRICT;


