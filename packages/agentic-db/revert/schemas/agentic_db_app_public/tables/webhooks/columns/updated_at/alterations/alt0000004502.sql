-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/updated_at/alterations/alt0000004502


ALTER TABLE agentic_db_app_public.webhooks 
  ALTER COLUMN updated_at DROP NOT NULL;


