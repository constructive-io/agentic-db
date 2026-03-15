-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-private/trigger_fns/emails_insert_tg




DROP TRIGGER trigger_name
    ON "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails;

DROP FUNCTION "agent-os-1773550873753-b6c4a3e1-user-identifiers-private".emails_insert_tg;



