-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/columns/created_at/alterations/alt0000000879
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/columns/created_at/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".contacts_chunks 
  ALTER COLUMN created_at SET DEFAULT now();

