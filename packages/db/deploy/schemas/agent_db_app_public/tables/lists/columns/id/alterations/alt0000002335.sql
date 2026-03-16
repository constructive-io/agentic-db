-- Deploy: schemas/agent_db_app_public/tables/lists/columns/id/alterations/alt0000002335
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/lists/columns/id/column
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/tags/column



ALTER TABLE "agent_db_app_public".lists 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

