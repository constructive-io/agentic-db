-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/columns/email/alterations/alt0000003194
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table
-- requires: schemas/agentic_db_app_public/tables/contact_emails/columns/email/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.contact_emails 
  ALTER COLUMN email SET NOT NULL;

