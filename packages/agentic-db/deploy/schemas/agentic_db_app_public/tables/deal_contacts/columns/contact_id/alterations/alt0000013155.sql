-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/columns/contact_id/alterations/alt0000013155
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/columns/contact_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.deal_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

