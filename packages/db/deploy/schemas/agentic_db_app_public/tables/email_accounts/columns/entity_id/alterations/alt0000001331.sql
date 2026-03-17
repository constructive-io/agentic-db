-- Deploy: schemas/agentic_db_app_public/tables/email_accounts/columns/entity_id/alterations/alt0000001331
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_accounts/table
-- requires: schemas/agentic_db_app_public/tables/email_accounts/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".email_accounts 
  ALTER COLUMN entity_id SET NOT NULL;

