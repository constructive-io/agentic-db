-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-private/trigger_fns/phone_numbers_insert_tg




DROP TRIGGER trigger_name
    ON "agent-os-1773546821914-39f1cb9b-user-identifiers-public".phone_numbers;

DROP FUNCTION "agent-os-1773546821914-39f1cb9b-user-identifiers-private".phone_numbers_insert_tg;



