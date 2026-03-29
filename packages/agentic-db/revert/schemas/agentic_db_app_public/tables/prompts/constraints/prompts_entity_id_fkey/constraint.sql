-- Revert: schemas/agentic_db_app_public/tables/prompts/constraints/prompts_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.prompts 
  DROP CONSTRAINT prompts_entity_id_fkey;


