-- Revert: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/grants/authenticated/insert/grant


REVOKE INSERT (type, display_name, profile_picture, username) ON "agent-os-1773551593867-bac64076-users-public".users FROM authenticated;


