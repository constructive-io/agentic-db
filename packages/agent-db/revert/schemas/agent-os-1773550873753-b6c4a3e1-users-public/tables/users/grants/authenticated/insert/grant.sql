-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/grants/authenticated/insert/grant


REVOKE INSERT (type, display_name, profile_picture, username) ON "agent-os-1773550873753-b6c4a3e1-users-public".users FROM authenticated;


