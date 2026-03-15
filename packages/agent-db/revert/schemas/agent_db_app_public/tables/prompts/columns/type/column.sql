-- Revert: schemas/agent_db_app_public/tables/prompts/columns/type/column


ALTER TABLE agent_db_app_public.prompts 
  DROP COLUMN type RESTRICT;


