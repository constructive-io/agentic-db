-- Deploy: schemas/agentic_db_users_public/tables/users/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT UPDATE (username, display_name, profile_picture) ON agentic_db_users_public.users TO authenticated;

