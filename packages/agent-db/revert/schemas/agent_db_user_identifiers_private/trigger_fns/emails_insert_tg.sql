-- Revert: schemas/agent_db_user_identifiers_private/trigger_fns/emails_insert_tg




DROP TRIGGER trigger_name
    ON agent_db_user_identifiers_public.emails;

DROP FUNCTION agent_db_user_identifiers_private.emails_insert_tg;



