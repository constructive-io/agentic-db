-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table


GRANT SELECT ON "agent_db_memberships_public".app_grants TO authenticated;

