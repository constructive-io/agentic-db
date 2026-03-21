-- Revert: schemas/agentic_db_user_identifiers_private/trigger_fns/phone_numbers_insert_tg




DROP TRIGGER trigger_name
    ON agentic_db_user_identifiers_public.phone_numbers;

DROP FUNCTION agentic_db_user_identifiers_private.phone_numbers_insert_tg;



