-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/event_type/column


ALTER TABLE agent_db_app_public.webhooks 
  DROP COLUMN event_type RESTRICT;


