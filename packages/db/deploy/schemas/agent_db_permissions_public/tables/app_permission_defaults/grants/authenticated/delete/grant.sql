-- Deploy: schemas/agent_db_permissions_public/tables/app_permission_defaults/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/table


GRANT DELETE ON "agent_db_permissions_public".app_permission_defaults TO authenticated;

