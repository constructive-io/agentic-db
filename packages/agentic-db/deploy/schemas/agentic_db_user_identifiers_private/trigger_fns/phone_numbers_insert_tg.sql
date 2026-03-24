-- Deploy: schemas/agentic_db_user_identifiers_private/trigger_fns/phone_numbers_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous



CREATE FUNCTION agentic_db_user_identifiers_private.phone_numbers_insert_tg ()
RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_primary_field agentic_db_user_identifiers_public.phone_numbers;
BEGIN
    SELECT * INTO v_primary_field
        FROM agentic_db_user_identifiers_public.phone_numbers e
        WHERE e.owner_id = NEW.owner_id
        AND is_primary IS TRUE;
    IF (NOT FOUND) THEN 
        NEW.is_primary = TRUE;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trigger_name
BEFORE INSERT
    ON agentic_db_user_identifiers_public.phone_numbers FOR EACH ROW
EXECUTE PROCEDURE agentic_db_user_identifiers_private.phone_numbers_insert_tg ();
CREATE UNIQUE INDEX phone_numbers_is_primary_idx
    ON agentic_db_user_identifiers_public.phone_numbers (is_primary, owner_id)
    WHERE (is_primary is true);

