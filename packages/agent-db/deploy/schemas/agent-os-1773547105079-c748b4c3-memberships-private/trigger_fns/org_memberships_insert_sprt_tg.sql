-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/trigger_fns/org_memberships_insert_sprt_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/app_memberships_sprt/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_memberships_sprt/table



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_insert_sprt_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    has_active_parent boolean;
BEGIN
    IF (NEW.is_owner IS TRUE) THEN 
      NEW.is_admin = TRUE;
      NEW.is_approved = TRUE;
      NEW.is_disabled = FALSE;
      NEW.is_banned = FALSE;
    END IF;
    SELECT (
        NEW.is_approved IS TRUE
    AND
        NEW.is_disabled IS FALSE
    AND
        NEW.is_banned IS FALSE 
    ) INTO NEW.is_active;
    IF (NEW.is_active IS TRUE) THEN 
        SELECT EXISTS (
            SELECT 1 FROM "agent-os-1773547105079-c748b4c3-memberships-private".app_memberships_sprt
            WHERE actor_id = NEW.actor_id
        ) INTO has_active_parent;
        IF (has_active_parent IS TRUE) THEN
            INSERT INTO "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_sprt 
                (is_owner, is_admin, permissions, actor_id, entity_id)
            VALUES 
                (NEW.is_owner, NEW.is_admin, NEW.permissions, NEW.actor_id, NEW.entity_id)
            ;
            INSERT INTO "agent-os-1773547105079-c748b4c3-memberships-public".org_members 
                (is_admin, actor_id, entity_id)
            VALUES 
                (NEW.is_admin, NEW.actor_id, NEW.entity_id)
            ;
        END IF;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

