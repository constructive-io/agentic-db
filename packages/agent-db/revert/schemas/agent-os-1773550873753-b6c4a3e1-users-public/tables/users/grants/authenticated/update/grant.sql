-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/grants/authenticated/update/grant


REVOKE UPDATE (username, display_name, profile_picture) ON "agent-os-1773550873753-b6c4a3e1-users-public".users FROM authenticated;


