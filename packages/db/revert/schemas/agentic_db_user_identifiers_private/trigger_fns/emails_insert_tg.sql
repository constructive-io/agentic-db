-- Revert: schemas/agentic_db_user_identifiers_private/trigger_fns/emails_insert_tg




DROP TRIGGER trigger_name
    ON "agentic_db_user_identifiers_public".emails;

DROP FUNCTION "agentic_db_user_identifiers_private".emails_insert_tg;



