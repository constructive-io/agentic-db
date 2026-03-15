-- Revert: schemas/agent_db_app_public/tables/lists/columns/entity_id/column


ALTER TABLE agent_db_app_public.lists 
  DROP COLUMN entity_id RESTRICT;


