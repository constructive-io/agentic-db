-- Deploy: schemas/agent_db_users_public/tables/users/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


GRANT SELECT ON agent_db_users_public.users TO authenticated;

