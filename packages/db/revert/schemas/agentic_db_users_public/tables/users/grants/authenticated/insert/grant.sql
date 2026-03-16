-- Revert: schemas/agentic_db_users_public/tables/users/grants/authenticated/insert/grant


REVOKE INSERT (type, display_name, profile_picture, username) ON "agentic_db_users_public".users FROM authenticated;


