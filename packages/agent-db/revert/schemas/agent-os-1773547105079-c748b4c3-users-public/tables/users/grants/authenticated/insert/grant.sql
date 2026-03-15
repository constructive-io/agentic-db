-- Revert: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/grants/authenticated/insert/grant


REVOKE INSERT (type, display_name, profile_picture, username) ON "agent-os-1773547105079-c748b4c3-users-public".users FROM authenticated;


