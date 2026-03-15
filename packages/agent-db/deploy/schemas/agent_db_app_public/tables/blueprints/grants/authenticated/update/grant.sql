-- Deploy: schemas/agent_db_app_public/tables/blueprints/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/embedding/column


GRANT UPDATE ON agent_db_app_public.blueprints TO authenticated;

