-- Deploy: schemas/agent_db_app_public/tables/webhooks/columns/event_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/url/alterations/alt0000002258


ALTER TABLE "agent_db_app_public".webhooks 
  ADD COLUMN event_type text;

