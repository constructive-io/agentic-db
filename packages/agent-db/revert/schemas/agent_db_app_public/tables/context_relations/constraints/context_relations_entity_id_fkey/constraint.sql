-- Revert: schemas/agent_db_app_public/tables/context_relations/constraints/context_relations_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.context_relations 
  DROP CONSTRAINT context_relations_entity_id_fkey;


