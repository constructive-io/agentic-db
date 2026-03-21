-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/integration_id/column


ALTER TABLE agentic_db_app_public.webhooks 
  DROP COLUMN integration_id RESTRICT;


