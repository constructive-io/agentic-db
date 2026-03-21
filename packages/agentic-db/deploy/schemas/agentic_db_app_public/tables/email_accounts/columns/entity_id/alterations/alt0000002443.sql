-- Deploy: schemas/agentic_db_app_public/tables/email_accounts/columns/entity_id/alterations/alt0000002443
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_accounts/table
-- requires: schemas/agentic_db_app_public/tables/files/indexes/files_language_idx
-- requires: schemas/agentic_db_app_public/tables/email_accounts/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".email_accounts 
  ALTER COLUMN entity_id SET NOT NULL;

