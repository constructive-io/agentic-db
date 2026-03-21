-- Deploy: schemas/agentic_db_app_public/tables/webhooks/columns/integration_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/updated_at/alterations/alt0000004503


ALTER TABLE agentic_db_app_public.webhooks 
  ADD COLUMN integration_id uuid;

