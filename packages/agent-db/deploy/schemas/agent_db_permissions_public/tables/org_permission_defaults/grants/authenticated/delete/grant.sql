-- Deploy: schemas/agent_db_permissions_public/tables/org_permission_defaults/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/table


GRANT DELETE ON "agent_db_permissions_public".org_permission_defaults TO authenticated;

