-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-private/trigger_fns/phone_numbers_insert_tg




DROP TRIGGER trigger_name
    ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".phone_numbers;

DROP FUNCTION "agent-os-1773547105079-c748b4c3-user-identifiers-private".phone_numbers_insert_tg;



