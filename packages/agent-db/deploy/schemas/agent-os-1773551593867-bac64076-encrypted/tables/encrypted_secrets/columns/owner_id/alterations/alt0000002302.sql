-- Deploy: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/owner_id/alterations/alt0000002302
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/owner_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets 
  ALTER COLUMN owner_id SET NOT NULL;

