-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/owner_id/alterations/alt0000004955




ALTER TABLE agentic_db_user_identifiers_public.crypto_addresses 
    ALTER COLUMN owner_id DROP DEFAULT;



