-- Deploy: schemas/agent_db_app_public/tables/webhooks/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/last_synced_at/column


ALTER TABLE "agent_db_app_public".webhooks 
  ENABLE ROW LEVEL SECURITY;

