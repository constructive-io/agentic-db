-- Deploy: schemas/agent_db_app_public/tables/webhooks/columns/id/alterations/alt0000002251
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/id/column
-- requires: schemas/agent_db_app_public/tables/integrations/columns/last_synced_at/column


ALTER TABLE "agent_db_app_public".webhooks 
  ALTER COLUMN id SET NOT NULL;

