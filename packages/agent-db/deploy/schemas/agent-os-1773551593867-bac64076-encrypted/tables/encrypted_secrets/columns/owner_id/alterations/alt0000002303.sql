-- Deploy: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/owner_id/alterations/alt0000002303
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/owner_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets.owner_id IS 'User who owns this encrypted secret';

