-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table


GRANT SELECT ON "agent_db_memberships_public".app_memberships TO authenticated;

