-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/email/alterations/alt0000001370
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/email/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/updated_at/alterations/alt0000001369


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".email_accounts 
  ALTER COLUMN email SET NOT NULL;

