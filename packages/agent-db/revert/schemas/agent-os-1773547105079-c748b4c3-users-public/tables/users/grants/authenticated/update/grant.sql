-- Revert: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/grants/authenticated/update/grant


REVOKE UPDATE (username, display_name, profile_picture) ON "agent-os-1773547105079-c748b4c3-users-public".users FROM authenticated;


