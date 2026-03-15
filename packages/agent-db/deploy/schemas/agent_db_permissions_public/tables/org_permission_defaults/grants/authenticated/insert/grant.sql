-- Deploy: schemas/agent_db_permissions_public/tables/org_permission_defaults/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/table


GRANT INSERT ON agent_db_permissions_public.org_permission_defaults TO authenticated;

