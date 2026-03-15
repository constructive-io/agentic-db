-- Deploy: schemas/agent_db_app_public/tables/reminders/alterations/alt0000001483
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/embedding/column


ALTER TABLE agent_db_app_public.reminders 
  DISABLE ROW LEVEL SECURITY;

