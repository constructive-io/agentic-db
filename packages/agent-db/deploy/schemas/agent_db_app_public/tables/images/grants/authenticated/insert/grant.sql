-- Deploy: schemas/agent_db_app_public/tables/images/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


GRANT INSERT ON agent_db_app_public.images TO authenticated;

