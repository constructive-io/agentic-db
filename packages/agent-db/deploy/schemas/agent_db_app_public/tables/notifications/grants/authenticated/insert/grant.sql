-- Deploy: schemas/agent_db_app_public/tables/notifications/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/ref_type/column


GRANT INSERT ON agent_db_app_public.notifications TO authenticated;

