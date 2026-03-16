-- Deploy: schemas/agentic_db_app_public/tables/integrations/columns/last_synced_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/status/alterations/alt0000001397


ALTER TABLE "agentic_db_app_public".integrations 
  ADD COLUMN last_synced_at timestamptz;

