-- Deploy: schemas/agent_db_app_public/tables/reminders/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/embedding/column


GRANT UPDATE ON agent_db_app_public.reminders TO authenticated;

