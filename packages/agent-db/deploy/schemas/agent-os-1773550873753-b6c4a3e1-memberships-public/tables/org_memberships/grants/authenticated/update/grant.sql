-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/table


GRANT UPDATE (is_banned, is_approved, is_disabled, granted) ON "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships TO authenticated;

