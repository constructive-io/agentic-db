-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/trigger_fns/app_admin_grants_apply_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema



CREATE FUNCTION "agent-os-1773551593867-bac64076-memberships-private".app_admin_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
            SET is_admin = TRUE
        WHERE actor_id = NEW.actor_id; 
    ELSE 
        UPDATE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
            SET is_admin = FALSE
        WHERE actor_id = NEW.actor_id
        AND is_owner = FALSE; -- cannot set owners 
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

