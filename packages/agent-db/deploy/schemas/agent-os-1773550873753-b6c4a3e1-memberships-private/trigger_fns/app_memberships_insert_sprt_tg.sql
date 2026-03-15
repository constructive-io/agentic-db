-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/trigger_fns/app_memberships_insert_sprt_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/table



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_insert_sprt_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
BEGIN
    IF (NEW.is_owner IS TRUE) THEN 
      NEW.is_admin = TRUE;
      NEW.is_verified = TRUE;
      NEW.is_approved = TRUE;
      NEW.is_disabled = FALSE;
      NEW.is_banned = FALSE;
    END IF;
    SELECT (
        NEW.is_verified IS TRUE
    AND
        NEW.is_approved IS TRUE
    AND
        NEW.is_disabled IS FALSE
    AND
        NEW.is_banned IS FALSE 
    ) INTO NEW.is_active;
    IF (NEW.is_active IS TRUE) THEN 
        INSERT INTO "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_sprt 
            (is_owner, is_admin, permissions, actor_id)
        VALUES 
            (NEW.is_owner, NEW.is_admin, NEW.permissions, NEW.actor_id)
        ;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

