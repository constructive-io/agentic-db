-- Deploy: schemas/agent_db_permissions_public/tables/app_permission_defaults/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/table


GRANT SELECT ON "agent_db_permissions_public".app_permission_defaults TO authenticated;

