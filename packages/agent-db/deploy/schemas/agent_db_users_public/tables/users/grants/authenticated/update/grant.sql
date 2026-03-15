-- Deploy: schemas/agent_db_users_public/tables/users/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


GRANT UPDATE (username, display_name, profile_picture) ON agent_db_users_public.users TO authenticated;

