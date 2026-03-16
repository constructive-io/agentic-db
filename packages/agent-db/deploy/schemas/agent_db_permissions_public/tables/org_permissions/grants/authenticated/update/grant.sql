-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/table


GRANT UPDATE ON "agent_db_permissions_public".org_permissions TO authenticated;

