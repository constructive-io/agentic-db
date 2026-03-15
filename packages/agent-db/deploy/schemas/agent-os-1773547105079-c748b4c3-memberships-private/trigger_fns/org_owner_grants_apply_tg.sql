-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/trigger_fns/org_owner_grants_apply_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-memberships-private".org_owner_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
            SET is_owner = TRUE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
    ELSE 
        UPDATE "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
            SET is_owner = FALSE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
        IF (
            SELECT count(*) < 1 FROM "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
            WHERE is_owner = TRUE
            AND entity_id = NEW.entity_id
        ) THEN 
            RAISE EXCEPTION 'REQUIRES_ONE_OWNER';
        END IF;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

