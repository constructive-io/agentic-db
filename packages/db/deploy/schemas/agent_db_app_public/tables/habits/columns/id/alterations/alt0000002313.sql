-- Deploy: schemas/agent_db_app_public/tables/habits/columns/id/alterations/alt0000002313
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/id/column
-- requires: schemas/agent_db_app_public/tables/reminders/columns/embedding/column



ALTER TABLE "agent_db_app_public".habits 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

