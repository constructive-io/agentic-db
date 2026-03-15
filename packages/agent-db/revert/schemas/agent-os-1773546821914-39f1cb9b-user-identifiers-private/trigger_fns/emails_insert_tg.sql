-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-private/trigger_fns/emails_insert_tg




DROP TRIGGER trigger_name
    ON "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails;

DROP FUNCTION "agent-os-1773546821914-39f1cb9b-user-identifiers-private".emails_insert_tg;



