-- Deploy: schemas/agent_db_app_public/tables/blueprints/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/embedding/column


GRANT DELETE ON agent_db_app_public.blueprints TO authenticated;

