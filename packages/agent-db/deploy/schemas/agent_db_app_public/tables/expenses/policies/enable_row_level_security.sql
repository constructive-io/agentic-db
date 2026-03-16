-- Deploy: schemas/agent_db_app_public/tables/expenses/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/embedding/column


ALTER TABLE "agent_db_app_public".expenses 
  ENABLE ROW LEVEL SECURITY;

