-- Revert: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/grants/authenticated/update/grant


REVOKE UPDATE (username, display_name, profile_picture) ON "agent-os-1773546821914-39f1cb9b-users-public".users FROM authenticated;


