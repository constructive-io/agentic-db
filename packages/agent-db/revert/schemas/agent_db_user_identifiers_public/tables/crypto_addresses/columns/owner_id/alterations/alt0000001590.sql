-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/owner_id/alterations/alt0000001590




ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
    ALTER COLUMN owner_id DROP DEFAULT;



