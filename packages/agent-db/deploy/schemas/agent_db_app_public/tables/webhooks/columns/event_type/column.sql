-- Deploy: schemas/agent_db_app_public/tables/webhooks/columns/event_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/url/alterations/alt0000001440


ALTER TABLE agent_db_app_public.webhooks 
  ADD COLUMN event_type text;

