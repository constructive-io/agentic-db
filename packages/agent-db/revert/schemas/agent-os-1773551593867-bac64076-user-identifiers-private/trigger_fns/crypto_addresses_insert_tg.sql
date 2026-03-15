-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-private/trigger_fns/crypto_addresses_insert_tg




DROP TRIGGER trigger_name
    ON "agent-os-1773551593867-bac64076-user-identifiers-public".crypto_addresses;

DROP FUNCTION "agent-os-1773551593867-bac64076-user-identifiers-private".crypto_addresses_insert_tg;



