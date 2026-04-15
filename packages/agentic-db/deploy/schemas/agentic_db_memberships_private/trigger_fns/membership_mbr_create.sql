-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/membership_mbr_create
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agentic_db_permissions_public/tables/org_permission_defaults/table


CREATE FUNCTION agentic_db_memberships_private.membership_mbr_create() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  owner_id uuid := jwt_public.current_user_id();
BEGIN
  IF NEW.type = 1 THEN
    INSERT INTO agentic_db_memberships_public.org_memberships (
      is_owner,
      actor_id,
      entity_id
    )
    VALUES
      (true, NEW.id, NEW.id);
  ELSIF owner_id IS NOT NULL THEN
    INSERT INTO agentic_db_memberships_public.org_memberships (
      is_owner,
      actor_id,
      entity_id
    )
    VALUES
      (true, owner_id, NEW.id);
    INSERT INTO agentic_db_memberships_public.org_membership_defaults (
      entity_id
    )
    VALUES
      (NEW.id);
    INSERT INTO agentic_db_permissions_public.org_permission_defaults (
      permissions,
      entity_id
    )
    VALUES
      (agentic_db_permissions_public.org_permissions_get_mask_by_names(ARRAY['send_approved_invites', 'create_invites']::citext[]), NEW.id);
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

