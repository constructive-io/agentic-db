-- Deploy: schemas/agent_db_app_public/tables/webhooks/alterations/alt0000004650
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/last_synced_at/column


ALTER TABLE "agent_db_app_public".webhooks 
  DISABLE ROW LEVEL SECURITY;

