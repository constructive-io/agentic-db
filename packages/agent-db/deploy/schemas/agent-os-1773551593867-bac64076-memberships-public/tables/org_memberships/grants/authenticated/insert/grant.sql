-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table


GRANT INSERT (actor_id, entity_id) ON "agent-os-1773551593867-bac64076-memberships-public".org_memberships TO authenticated;

