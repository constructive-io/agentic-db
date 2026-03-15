-- Revert: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/grants/authenticated/insert/grant


REVOKE INSERT (type, display_name, profile_picture, username) ON "agent-os-1773546821914-39f1cb9b-users-public".users FROM authenticated;


