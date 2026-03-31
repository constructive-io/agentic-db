-- Deploy: schemas/agentic_db_app_public/tables/companies_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


GRANT UPDATE ON "agentic_db_app_public".companies_chunks TO authenticated;

