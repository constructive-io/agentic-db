-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/id/column


ALTER TABLE agent_db_app_public.webhooks 
  DROP COLUMN id RESTRICT;


