-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/crypto_addresses/columns/is_verified/alterations/alt0000000742


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".crypto_addresses 
  ALTER COLUMN is_verified DROP NOT NULL;


