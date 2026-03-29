-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


GRANT SELECT ON agentic_db_app_public.touchpoints TO authenticated;

