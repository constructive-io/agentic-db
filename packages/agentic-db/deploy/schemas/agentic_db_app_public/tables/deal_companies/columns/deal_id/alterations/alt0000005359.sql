-- Deploy: schemas/agentic_db_app_public/tables/deal_companies/columns/deal_id/alterations/alt0000005359
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_companies/table
-- requires: schemas/agentic_db_app_public/tables/deal_companies/columns/deal_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.deal_companies 
  ALTER COLUMN deal_id SET NOT NULL;

