-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-private/trigger_fns/phone_numbers_insert_tg




DROP TRIGGER trigger_name
    ON "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".phone_numbers;

DROP FUNCTION "agent-os-1773550873753-b6c4a3e1-user-identifiers-private".phone_numbers_insert_tg;



