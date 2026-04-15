-- Deploy: schemas/agentic_db_app_public/tables/contact_phones/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_phones/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.contact_phones 
  ADD COLUMN created_at timestamptz;

