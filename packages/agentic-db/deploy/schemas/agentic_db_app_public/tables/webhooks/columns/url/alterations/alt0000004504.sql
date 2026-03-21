-- Deploy: schemas/agentic_db_app_public/tables/webhooks/columns/url/alterations/alt0000004504
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/url/column
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/integration_id/column


ALTER TABLE agentic_db_app_public.webhooks 
  ALTER COLUMN url SET NOT NULL;

