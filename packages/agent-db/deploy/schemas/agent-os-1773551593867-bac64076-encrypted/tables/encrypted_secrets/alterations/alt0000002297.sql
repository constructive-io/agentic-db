-- Deploy: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/alterations/alt0000002297
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/table


ALTER TABLE "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets 
  DISABLE ROW LEVEL SECURITY;

