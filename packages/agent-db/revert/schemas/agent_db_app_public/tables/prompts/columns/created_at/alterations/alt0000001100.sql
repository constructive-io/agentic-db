-- Revert: schemas/agent_db_app_public/tables/prompts/columns/created_at/alterations/alt0000001100


ALTER TABLE agent_db_app_public.prompts 
  ALTER COLUMN created_at DROP NOT NULL;


