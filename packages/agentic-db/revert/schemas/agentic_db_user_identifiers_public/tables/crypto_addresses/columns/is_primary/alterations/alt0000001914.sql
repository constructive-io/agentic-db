-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/is_primary/alterations/alt0000001914




ALTER TABLE agentic_db_user_identifiers_public.crypto_addresses 
    ALTER COLUMN is_primary DROP DEFAULT;



