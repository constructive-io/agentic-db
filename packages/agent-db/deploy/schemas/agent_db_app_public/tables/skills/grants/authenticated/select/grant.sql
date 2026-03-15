-- Deploy: schemas/agent_db_app_public/tables/skills/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/embedding/column


GRANT SELECT ON "agent_db_app_public".skills TO authenticated;

