-- Deploy: schemas/agent_db_app_public/tables/email_accounts/columns/updated_at/alterations/alt0000004586
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/email_accounts/table
-- requires: schemas/agent_db_app_public/tables/email_accounts/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/email_accounts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".email_accounts 
  ALTER COLUMN updated_at SET NOT NULL;

