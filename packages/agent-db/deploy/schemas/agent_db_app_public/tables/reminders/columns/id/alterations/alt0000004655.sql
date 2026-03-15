-- Deploy: schemas/agent_db_app_public/tables/reminders/columns/id/alterations/alt0000004655
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/id/column
-- requires: schemas/agent_db_app_public/tables/ideas/columns/embedding/column



ALTER TABLE "agent_db_app_public".reminders 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

