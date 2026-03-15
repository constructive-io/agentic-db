-- Deploy: schemas/agent_db_user_identifiers_private/trigger_fns/emails_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_private/schema



CREATE FUNCTION agent_db_user_identifiers_private.emails_insert_tg ()
RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_primary_field agent_db_user_identifiers_public.emails;
BEGIN
    SELECT * INTO v_primary_field
        FROM agent_db_user_identifiers_public.emails e
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
    ON agent_db_user_identifiers_public.emails FOR EACH ROW
EXECUTE PROCEDURE agent_db_user_identifiers_private.emails_insert_tg ();
CREATE UNIQUE INDEX emails_is_primary_idx
    ON agent_db_user_identifiers_public.emails (is_primary, owner_id)
    WHERE (is_primary is true);

