-- Revert: schemas/agent_db_app_public/tables/prompts/constraints/prompts_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.prompts 
  DROP CONSTRAINT prompts_entity_id_fkey;


