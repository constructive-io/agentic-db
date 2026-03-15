-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/trigger_fns/org_grants_apply_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema



CREATE FUNCTION "agent-os-1773551593867-bac64076-memberships-private".org_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
            SET granted = granted | NEW.permissions
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
    ELSE 
        UPDATE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
            SET granted = granted & ~ NEW.permissions
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

