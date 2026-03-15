-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/columns/is_verified/alterations/alt0000002352




ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".crypto_addresses 
    ALTER COLUMN is_verified DROP DEFAULT;



