-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/trigger_fns/org_admin_grants_apply_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-memberships-private".org_admin_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships 
            SET is_admin = TRUE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
    ELSE 
        UPDATE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships 
            SET is_admin = FALSE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id
        AND is_owner = FALSE; 
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

