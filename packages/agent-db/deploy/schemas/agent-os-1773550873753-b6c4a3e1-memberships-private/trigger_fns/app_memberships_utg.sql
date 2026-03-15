-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/trigger_fns/app_memberships_utg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_utg ()
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

