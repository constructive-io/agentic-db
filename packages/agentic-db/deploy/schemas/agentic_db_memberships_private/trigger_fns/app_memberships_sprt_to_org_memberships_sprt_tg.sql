-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/app_memberships_sprt_to_org_memberships_sprt_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/table


CREATE FUNCTION agentic_db_memberships_private.app_memberships_sprt_to_org_memberships_sprt_tg() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  IF TG_OP = 'DELETE' THEN
    BEGIN
      DELETE FROM agentic_db_memberships_private.org_memberships_sprt
      WHERE
        actor_id = OLD.actor_id;
      DELETE FROM agentic_db_memberships_public.org_members
      WHERE
        actor_id = OLD.actor_id;
    EXCEPTION
      WHEN undefined_table THEN
        SELECT NULL;
    END;
    RETURN OLD;
  END IF;
  IF TG_OP = 'INSERT' THEN
    BEGIN
      INSERT INTO agentic_db_memberships_private.org_memberships_sprt (
        is_owner,
        is_admin,
        permissions,
        actor_id,
        entity_id
      )
      SELECT
        m.is_owner,
        m.is_admin,
        m.permissions,
        m.actor_id,
        m.entity_id
      FROM agentic_db_memberships_public.org_memberships AS m
      WHERE
        m.actor_id = NEW.actor_id AND m.is_active IS TRUE
      ON CONFLICT (actor_id, entity_id) DO UPDATE SET
      is_owner = EXCLUDED.is_owner, is_admin = EXCLUDED.is_admin, permissions = EXCLUDED.permissions;
      INSERT INTO agentic_db_memberships_public.org_members (
        is_admin,
        actor_id,
        entity_id
      )
      SELECT
        m.is_admin,
        m.actor_id,
        m.entity_id
      FROM agentic_db_memberships_public.org_memberships AS m
      WHERE
        m.actor_id = NEW.actor_id AND m.is_active IS TRUE
      ON CONFLICT (actor_id, entity_id) DO NOTHING;
    EXCEPTION
      WHEN undefined_table THEN
        SELECT NULL;
    END;
    RETURN NEW;
  END IF;
  RETURN NULL;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

