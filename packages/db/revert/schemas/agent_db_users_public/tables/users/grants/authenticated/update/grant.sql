-- Revert: schemas/agent_db_users_public/tables/users/grants/authenticated/update/grant


REVOKE UPDATE (username, display_name, profile_picture) ON "agent_db_users_public".users FROM authenticated;


