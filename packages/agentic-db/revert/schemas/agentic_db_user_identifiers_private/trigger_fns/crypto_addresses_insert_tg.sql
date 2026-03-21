-- Revert: schemas/agentic_db_user_identifiers_private/trigger_fns/crypto_addresses_insert_tg




DROP TRIGGER trigger_name
    ON agentic_db_user_identifiers_public.crypto_addresses;

DROP FUNCTION agentic_db_user_identifiers_private.crypto_addresses_insert_tg;



