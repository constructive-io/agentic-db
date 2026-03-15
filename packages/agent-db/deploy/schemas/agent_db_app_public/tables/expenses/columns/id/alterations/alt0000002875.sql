-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/id/alterations/alt0000002875
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/id/column
-- requires: schemas/agent_db_app_public/tables/calendar_sync/columns/last_synced_at/column


ALTER TABLE "agent_db_app_public".expenses 
  ALTER COLUMN id SET NOT NULL;

