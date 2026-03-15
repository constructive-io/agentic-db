-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-private/trigger_fns/phone_numbers_insert_tg




DROP TRIGGER trigger_name
    ON "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers;

DROP FUNCTION "agent-os-1773551593867-bac64076-user-identifiers-private".phone_numbers_insert_tg;



