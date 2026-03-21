-- Deploy: schemas/agentic_db_app_public/tables/webhooks/columns/url/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/integration_id/column


ALTER TABLE agentic_db_app_public.webhooks 
  ADD COLUMN url text;

