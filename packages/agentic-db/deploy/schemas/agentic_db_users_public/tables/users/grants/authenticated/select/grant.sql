-- Deploy: schemas/agentic_db_users_public/tables/users/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table


GRANT SELECT ON agentic_db_users_public.users TO authenticated;

