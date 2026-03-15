-- Revert: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/grants/authenticated/update/grant


REVOKE UPDATE (username, display_name, profile_picture) ON "agent-os-1773551593867-bac64076-users-public".users FROM authenticated;


