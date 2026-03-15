-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/alterations/alt0000002971
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".email_accounts 
  DISABLE ROW LEVEL SECURITY;

