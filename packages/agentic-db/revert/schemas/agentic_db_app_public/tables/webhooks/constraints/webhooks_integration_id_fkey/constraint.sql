-- Revert: schemas/agentic_db_app_public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


ALTER TABLE agentic_db_app_public.webhooks 
  DROP CONSTRAINT webhooks_integration_id_fkey;


