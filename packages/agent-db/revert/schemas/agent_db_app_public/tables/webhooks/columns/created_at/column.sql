-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/created_at/column


ALTER TABLE agent_db_app_public.webhooks 
  DROP COLUMN created_at RESTRICT;


