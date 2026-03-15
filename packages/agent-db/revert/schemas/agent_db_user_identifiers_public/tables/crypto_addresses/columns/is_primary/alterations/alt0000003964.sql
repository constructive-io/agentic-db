-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/is_primary/alterations/alt0000003964




ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
    ALTER COLUMN is_primary DROP DEFAULT;



