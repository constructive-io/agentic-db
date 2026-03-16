-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/error/column


GRANT DELETE ON "agent_db_app_public".agent_spawns TO authenticated;

