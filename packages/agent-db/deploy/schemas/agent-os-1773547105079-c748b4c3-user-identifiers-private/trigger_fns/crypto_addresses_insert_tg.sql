-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-private/trigger_fns/crypto_addresses_insert_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-private/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-user-identifiers-private".crypto_addresses_insert_tg ()
RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_primary_field "agent-os-1773547105079-c748b4c3-user-identifiers-public".crypto_addresses;
BEGIN
    SELECT * INTO v_primary_field
        FROM "agent-os-1773547105079-c748b4c3-user-identifiers-public".crypto_addresses e
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
    ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".crypto_addresses FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773547105079-c748b4c3-user-identifiers-private".crypto_addresses_insert_tg ();
CREATE UNIQUE INDEX crypto_addresses_is_primary_idx
    ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".crypto_addresses (is_primary, owner_id)
    WHERE (is_primary is true);

