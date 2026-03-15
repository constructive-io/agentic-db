-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/grants/authenticated/insert/grant


REVOKE INSERT (actor_id, entity_id) ON "agent-os-1773551593867-bac64076-memberships-public".org_memberships FROM authenticated;


