-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/grants/authenticated/update/grant


REVOKE UPDATE (is_banned, is_approved, is_verified, is_disabled, granted) ON "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships FROM authenticated;


