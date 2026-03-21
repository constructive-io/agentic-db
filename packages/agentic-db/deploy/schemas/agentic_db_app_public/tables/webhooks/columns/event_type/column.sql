-- Deploy: schemas/agentic_db_app_public/tables/webhooks/columns/event_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/url/alterations/alt0000002518


ALTER TABLE "agentic_db_app_public".webhooks 
  ADD COLUMN event_type text;

