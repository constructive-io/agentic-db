-- Deploy: schemas/agentic_db_app_public/tables/deal_companies/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_companies/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


GRANT DELETE ON "agentic_db_app_public".deal_companies TO authenticated;

