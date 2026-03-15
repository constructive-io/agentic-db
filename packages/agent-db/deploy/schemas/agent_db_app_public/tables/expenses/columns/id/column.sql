-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/embedding/column


ALTER TABLE "agent_db_app_public".expenses 
  ADD COLUMN id uuid;

