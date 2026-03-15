-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/org_memberships_update_sprt_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/table



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_update_sprt_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_num_updated int;
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
    IF ( NEW.is_active IS FALSE ) THEN 
        DELETE FROM "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt 
            WHERE actor_id = NEW.actor_id
                AND entity_id = NEW.entity_id;
        DELETE FROM "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
            WHERE actor_id = NEW.actor_id
                AND entity_id = NEW.entity_id;
    ELSE 
        SELECT EXISTS (
            SELECT 1 FROM "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt
            WHERE actor_id = NEW.actor_id
        ) INTO has_active_parent;
        IF (has_active_parent IS TRUE) THEN
            INSERT INTO "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt 
                (is_owner, is_admin, permissions, actor_id, entity_id)
            VALUES 
                (NEW.is_owner, NEW.is_admin, NEW.permissions, NEW.actor_id, NEW.entity_id)
            ON CONFLICT (actor_id, entity_id)
            DO UPDATE
              SET
                is_owner = EXCLUDED.is_owner,
                is_admin = EXCLUDED.is_admin,
                permissions = EXCLUDED.permissions
            ;
            INSERT INTO "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
                (is_admin, actor_id, entity_id)
            VALUES 
                (NEW.is_admin, NEW.actor_id, NEW.entity_id)
            ON CONFLICT (actor_id, entity_id)
            DO NOTHING;
        ELSE
            DELETE FROM "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt 
                WHERE actor_id = NEW.actor_id
                    AND entity_id = NEW.entity_id;
            DELETE FROM "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
                WHERE actor_id = NEW.actor_id
                    AND entity_id = NEW.entity_id;
        END IF;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

