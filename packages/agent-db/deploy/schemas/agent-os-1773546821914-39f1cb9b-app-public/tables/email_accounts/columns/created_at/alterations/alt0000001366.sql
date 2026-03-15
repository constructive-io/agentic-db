-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/created_at/alterations/alt0000001366
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/created_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".email_accounts 
  ALTER COLUMN created_at SET NOT NULL;

