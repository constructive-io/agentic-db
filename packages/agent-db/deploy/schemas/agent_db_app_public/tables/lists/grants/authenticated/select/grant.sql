-- Deploy: schemas/agent_db_app_public/tables/lists/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/tags/column


GRANT SELECT ON "agent_db_app_public".lists TO authenticated;

