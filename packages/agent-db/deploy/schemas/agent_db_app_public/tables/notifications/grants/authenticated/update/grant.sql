-- Deploy: schemas/agent_db_app_public/tables/notifications/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/ref_type/column


GRANT UPDATE ON "agent_db_app_public".notifications TO authenticated;

