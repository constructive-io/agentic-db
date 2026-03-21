-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/app_memberships_utg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema



CREATE FUNCTION "agentic_db_memberships_private".app_memberships_utg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    bitlen int = bit_length(NEW.permissions);
BEGIN
    IF (NEW.is_owner IS TRUE) THEN 
        NEW.is_admin = TRUE;
        NEW.is_approved = TRUE;
        NEW.is_verified = TRUE;
        NEW.is_disabled = FALSE;
        NEW.is_banned = FALSE;
    END IF;
    SELECT (
        NEW.is_approved IS TRUE
    AND
        NEW.is_verified IS TRUE
    AND
        NEW.is_disabled IS FALSE
    AND
        NEW.is_banned IS FALSE 
    ) INTO NEW.is_active;
    IF (NEW.is_admin IS TRUE OR NEW.is_owner IS TRUE) THEN 
        NEW.permissions = lpad('', bitlen::int, '1');
    ELSE
        NEW.permissions = NEW.granted;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

