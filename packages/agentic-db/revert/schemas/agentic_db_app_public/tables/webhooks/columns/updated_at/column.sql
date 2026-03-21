-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.webhooks 
  DROP COLUMN updated_at RESTRICT;


