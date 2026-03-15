-- Revert: schemas/agent_db_app_public/tables/interactions/columns/type/alterations/alt0000000926


ALTER TABLE agent_db_app_public.interactions 
  ALTER COLUMN type DROP NOT NULL;


