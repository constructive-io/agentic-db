-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/columns/entity_id/alterations/alt0000001074
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table
-- requires: schemas/agentic_db_app_public/tables/contact_emails/columns/entity_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".contact_emails 
  ALTER COLUMN entity_id SET NOT NULL;

