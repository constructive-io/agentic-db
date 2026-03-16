-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table


GRANT DELETE ON "agent_db_permissions_public".app_permissions TO authenticated;

