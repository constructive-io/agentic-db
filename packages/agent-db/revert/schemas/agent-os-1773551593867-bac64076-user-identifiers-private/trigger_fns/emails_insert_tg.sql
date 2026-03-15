-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-private/trigger_fns/emails_insert_tg




DROP TRIGGER trigger_name
    ON "agent-os-1773551593867-bac64076-user-identifiers-public".emails;

DROP FUNCTION "agent-os-1773551593867-bac64076-user-identifiers-private".emails_insert_tg;



