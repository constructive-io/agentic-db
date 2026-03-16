-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/last_synced_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/status/alterations/alt0000002249


ALTER TABLE "agent_db_app_public".integrations 
  ADD COLUMN last_synced_at timestamptz;

