-- Revert: schemas/agent_db_app_public/tables/tools/constraints/tools_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.tools 
  DROP CONSTRAINT tools_entity_id_fkey;


