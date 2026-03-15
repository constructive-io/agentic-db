-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/columns/updated_at/alterations/alt0000002358


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".crypto_addresses 
  ALTER COLUMN updated_at DROP DEFAULT;


