-- Revert: schemas/agent_db_app_public/tables/memories/columns/related_entity_id/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN related_entity_id RESTRICT;


