-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/trigger_fns/app_grants_apply_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-memberships-private".app_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
            SET granted = granted | NEW.permissions
        WHERE actor_id = NEW.actor_id; 
    ELSE 
        UPDATE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
            SET granted = granted & ~ NEW.permissions
        WHERE actor_id = NEW.actor_id; 
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

