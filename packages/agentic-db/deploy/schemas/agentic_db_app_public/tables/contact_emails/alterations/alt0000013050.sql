-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/alterations/alt0000013050
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.contact_emails 
  DISABLE ROW LEVEL SECURITY;

