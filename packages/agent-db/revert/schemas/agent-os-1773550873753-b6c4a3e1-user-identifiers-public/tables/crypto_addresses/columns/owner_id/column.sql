-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/crypto_addresses/columns/owner_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".crypto_addresses 
  DROP COLUMN owner_id RESTRICT;


