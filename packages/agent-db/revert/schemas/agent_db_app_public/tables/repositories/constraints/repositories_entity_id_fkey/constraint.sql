-- Revert: schemas/agent_db_app_public/tables/repositories/constraints/repositories_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.repositories 
  DROP CONSTRAINT repositories_entity_id_fkey;


