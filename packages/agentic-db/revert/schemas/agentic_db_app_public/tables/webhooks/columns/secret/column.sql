-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/secret/column


ALTER TABLE agentic_db_app_public.webhooks 
  DROP COLUMN secret RESTRICT;


