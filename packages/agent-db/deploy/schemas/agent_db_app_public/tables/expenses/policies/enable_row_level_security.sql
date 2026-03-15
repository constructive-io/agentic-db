-- Deploy: schemas/agent_db_app_public/tables/expenses/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/calendar_sync/columns/last_synced_at/column


ALTER TABLE "agent_db_app_public".expenses 
  ENABLE ROW LEVEL SECURITY;

