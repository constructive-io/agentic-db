-- Deploy: schemas/agentic_db_user_identifiers_private/trigger_fns/emails_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_private/schema



CREATE FUNCTION "agentic_db_user_identifiers_private".emails_insert_tg ()
RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_primary_field "agentic_db_user_identifiers_public".emails;
BEGIN
    SELECT * INTO v_primary_field
        FROM "agentic_db_user_identifiers_public".emails e
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
    ON "agentic_db_user_identifiers_public".emails FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_user_identifiers_private".emails_insert_tg ();
CREATE UNIQUE INDEX emails_is_primary_idx
    ON "agentic_db_user_identifiers_public".emails (is_primary, owner_id)
    WHERE (is_primary is true);

