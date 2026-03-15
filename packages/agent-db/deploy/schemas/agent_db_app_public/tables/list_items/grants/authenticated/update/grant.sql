-- Deploy: schemas/agent_db_app_public/tables/list_items/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/list_items/table
-- requires: schemas/agent_db_app_public/tables/lists/columns/embedding/column


GRANT UPDATE ON agent_db_app_public.list_items TO authenticated;

