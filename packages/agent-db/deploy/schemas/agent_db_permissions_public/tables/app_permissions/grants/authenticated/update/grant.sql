-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table


GRANT UPDATE ON agent_db_permissions_public.app_permissions TO authenticated;

