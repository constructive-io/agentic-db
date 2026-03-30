-- Deploy: schemas/agentic_db_app_public/tables/events_chunks/alterations/alt0000000968
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".events_chunks 
  DISABLE ROW LEVEL SECURITY;

