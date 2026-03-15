-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-private/trigger_fns/phone_numbers_insert_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-private/schema



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-user-identifiers-private".phone_numbers_insert_tg ()
RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_primary_field "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".phone_numbers;
BEGIN
    SELECT * INTO v_primary_field
        FROM "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".phone_numbers e
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
    ON "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".phone_numbers FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-user-identifiers-private".phone_numbers_insert_tg ();
CREATE UNIQUE INDEX phone_numbers_is_primary_idx
    ON "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".phone_numbers (is_primary, owner_id)
    WHERE (is_primary is true);

