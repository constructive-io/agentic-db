-- Deploy: schemas/agentic_db_app_public/tables/webhooks/columns/event_type/alterations/alt0000004505
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/event_type/column
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/url/alterations/alt0000004504


ALTER TABLE agentic_db_app_public.webhooks 
  ALTER COLUMN event_type SET NOT NULL;

