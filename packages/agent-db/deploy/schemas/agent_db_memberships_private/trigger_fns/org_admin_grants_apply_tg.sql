-- Deploy: schemas/agent_db_memberships_private/trigger_fns/org_admin_grants_apply_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema



CREATE FUNCTION agent_db_memberships_private.org_admin_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE agent_db_memberships_public.org_memberships 
            SET is_admin = TRUE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
    ELSE 
        UPDATE agent_db_memberships_public.org_memberships 
            SET is_admin = FALSE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id
        AND is_owner = FALSE; 
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

