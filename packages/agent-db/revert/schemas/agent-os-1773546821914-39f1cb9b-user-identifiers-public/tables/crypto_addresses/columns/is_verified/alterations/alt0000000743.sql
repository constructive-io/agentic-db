-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/crypto_addresses/columns/is_verified/alterations/alt0000000743




ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".crypto_addresses 
    ALTER COLUMN is_verified DROP DEFAULT;



