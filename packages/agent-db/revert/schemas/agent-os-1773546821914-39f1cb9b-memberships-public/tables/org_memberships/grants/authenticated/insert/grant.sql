-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/grants/authenticated/insert/grant


REVOKE INSERT (actor_id, entity_id) ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships FROM authenticated;


