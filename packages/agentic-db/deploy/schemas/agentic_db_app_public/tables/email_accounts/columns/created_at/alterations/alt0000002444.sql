-- Deploy: schemas/agentic_db_app_public/tables/email_accounts/columns/created_at/alterations/alt0000002444
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_accounts/table
-- requires: schemas/agentic_db_app_public/tables/email_accounts/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/email_accounts/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".email_accounts 
  ALTER COLUMN created_at SET NOT NULL;

