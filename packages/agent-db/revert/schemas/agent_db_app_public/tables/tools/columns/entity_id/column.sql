-- Revert: schemas/agent_db_app_public/tables/tools/columns/entity_id/column


ALTER TABLE agent_db_app_public.tools 
  DROP COLUMN entity_id RESTRICT;


