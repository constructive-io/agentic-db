-- Deploy: schemas/agent_db_app_public/tables/email_accounts/columns/entity_id/alterations/alt0000004535
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/email_accounts/table
-- requires: schemas/agent_db_app_public/tables/email_accounts/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


ALTER TABLE "agent_db_app_public".email_accounts 
  ALTER COLUMN entity_id SET NOT NULL;

