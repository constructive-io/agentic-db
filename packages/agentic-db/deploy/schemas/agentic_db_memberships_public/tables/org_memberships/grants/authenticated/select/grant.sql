-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


GRANT SELECT ON "agentic_db_memberships_public".org_memberships TO authenticated;

