-- Revert: schemas/agent_db_app_public/tables/lists/constraints/lists_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.lists 
  DROP CONSTRAINT lists_entity_id_fkey;


