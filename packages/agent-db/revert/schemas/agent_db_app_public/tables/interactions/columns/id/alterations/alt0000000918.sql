-- Revert: schemas/agent_db_app_public/tables/interactions/columns/id/alterations/alt0000000918


ALTER TABLE agent_db_app_public.interactions 
  ALTER COLUMN id DROP NOT NULL;


