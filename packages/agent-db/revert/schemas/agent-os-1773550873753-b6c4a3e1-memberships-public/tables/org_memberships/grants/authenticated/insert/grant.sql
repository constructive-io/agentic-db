-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/grants/authenticated/insert/grant


REVOKE INSERT (actor_id, entity_id) ON "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships FROM authenticated;


