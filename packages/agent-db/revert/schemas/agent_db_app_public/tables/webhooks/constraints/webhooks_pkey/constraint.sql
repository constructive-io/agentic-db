-- Revert: schemas/agent_db_app_public/tables/webhooks/constraints/webhooks_pkey/constraint


ALTER TABLE agent_db_app_public.webhooks 
  DROP CONSTRAINT webhooks_pkey;


