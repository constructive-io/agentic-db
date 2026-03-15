-- Revert: schemas/agent_db_app_public/tables/memories/columns/entity_id/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN entity_id RESTRICT;


