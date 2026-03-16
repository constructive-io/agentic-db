-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table


GRANT UPDATE (is_banned, is_approved, is_disabled, granted) ON "agent_db_memberships_public".org_memberships TO authenticated;

