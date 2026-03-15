-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/app_memberships_sprt_to_org_memberships_sprt_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/table



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt_to_org_memberships_sprt_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    
    IF (TG_OP = 'DELETE') THEN
        BEGIN
            DELETE FROM "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt 
                WHERE actor_id = OLD.actor_id;
            DELETE FROM "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
                WHERE actor_id = OLD.actor_id;
        EXCEPTION WHEN undefined_table THEN
            NULL;
        END;
            
        RETURN OLD;
    END IF;
    IF (TG_OP = 'INSERT') THEN
        BEGIN
            INSERT INTO "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt 
                (is_owner, is_admin, permissions, actor_id, entity_id)
            SELECT 
                m.is_owner, m.is_admin, m.permissions, m.actor_id, m.entity_id
            FROM "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships m
            WHERE m.actor_id = NEW.actor_id
              AND m.is_active IS TRUE
            ON CONFLICT (actor_id, entity_id)
            DO UPDATE
              SET
                is_owner = EXCLUDED.is_owner,
                is_admin = EXCLUDED.is_admin,
                permissions = EXCLUDED.permissions
            ;
            INSERT INTO "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
                (is_admin, actor_id, entity_id)
            SELECT 
                m.is_admin, m.actor_id, m.entity_id
            FROM "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships m
            WHERE m.actor_id = NEW.actor_id
              AND m.is_active IS TRUE
            ON CONFLICT (actor_id, entity_id)
            DO NOTHING;
        EXCEPTION WHEN undefined_table THEN
            NULL;
        END;
        
        RETURN NEW;
    END IF;
    RETURN NULL;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

