-- Revert: schemas/agent_db_app_public/tables/interactions/constraints/interactions_pkey/constraint


ALTER TABLE agent_db_app_public.interactions 
  DROP CONSTRAINT interactions_pkey;


