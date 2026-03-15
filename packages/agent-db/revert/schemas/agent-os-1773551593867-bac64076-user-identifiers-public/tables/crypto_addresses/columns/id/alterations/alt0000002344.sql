-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/columns/id/alterations/alt0000002344


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".crypto_addresses 
  ALTER COLUMN id DROP NOT NULL;


