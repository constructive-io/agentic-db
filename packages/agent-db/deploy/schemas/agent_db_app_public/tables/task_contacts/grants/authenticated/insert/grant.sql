-- Deploy: schemas/agent_db_app_public/tables/task_contacts/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/task_contacts/table
-- requires: schemas/agent_db_app_public/tables/list_items/constraints/list_items_list_id_fkey/constraint


GRANT INSERT ON agent_db_app_public.task_contacts TO authenticated;

