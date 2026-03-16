-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/is_verified/alterations/alt0000001595




ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
    ALTER COLUMN is_verified DROP DEFAULT;



