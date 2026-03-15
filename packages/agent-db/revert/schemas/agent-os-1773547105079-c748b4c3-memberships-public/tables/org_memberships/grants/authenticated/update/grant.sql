-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/grants/authenticated/update/grant


REVOKE UPDATE (is_banned, is_approved, is_disabled, granted) ON "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships FROM authenticated;


