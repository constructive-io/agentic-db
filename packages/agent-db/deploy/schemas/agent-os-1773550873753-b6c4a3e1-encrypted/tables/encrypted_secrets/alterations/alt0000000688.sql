-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/alterations/alt0000000688
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-encrypted".encrypted_secrets 
  DISABLE ROW LEVEL SECURITY;

