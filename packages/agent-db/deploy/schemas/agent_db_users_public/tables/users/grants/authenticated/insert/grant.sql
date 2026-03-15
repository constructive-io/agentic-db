-- Deploy: schemas/agent_db_users_public/tables/users/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


GRANT INSERT (type, display_name, profile_picture, username) ON "agent_db_users_public".users TO authenticated;

