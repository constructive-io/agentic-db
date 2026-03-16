-- Deploy: schemas/agent_db_app_public/tables/reminders/alterations/alt0000002301
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/embedding/column


ALTER TABLE "agent_db_app_public".reminders 
  DISABLE ROW LEVEL SECURITY;

