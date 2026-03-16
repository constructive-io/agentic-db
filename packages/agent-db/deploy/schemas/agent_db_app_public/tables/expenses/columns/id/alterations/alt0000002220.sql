-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/id/alterations/alt0000002220
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/id/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/embedding/column



ALTER TABLE "agent_db_app_public".expenses 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

