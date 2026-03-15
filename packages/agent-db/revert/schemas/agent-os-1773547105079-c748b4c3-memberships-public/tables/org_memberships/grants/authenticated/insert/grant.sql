-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/grants/authenticated/insert/grant


REVOKE INSERT (actor_id, entity_id) ON "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships FROM authenticated;


