-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/entity_id/alterations/alt0000001365
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".email_accounts 
  ALTER COLUMN entity_id SET NOT NULL;

