-- Deploy: schemas/agent_db_app_public/tables/activity_log/columns/id/alterations/alt0000002113
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/id/column
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/embedding/column



ALTER TABLE "agent_db_app_public".activity_log 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

