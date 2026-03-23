-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/columns/deal_id/alterations/alt0000002864
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/columns/deal_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.deal_contacts 
  ALTER COLUMN deal_id SET NOT NULL;

