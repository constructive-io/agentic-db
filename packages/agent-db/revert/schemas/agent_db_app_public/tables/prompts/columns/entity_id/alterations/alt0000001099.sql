-- Revert: schemas/agent_db_app_public/tables/prompts/columns/entity_id/alterations/alt0000001099


ALTER TABLE agent_db_app_public.prompts 
  ALTER COLUMN entity_id DROP NOT NULL;


