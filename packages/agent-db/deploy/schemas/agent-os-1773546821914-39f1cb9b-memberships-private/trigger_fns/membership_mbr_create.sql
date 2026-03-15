-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/membership_mbr_create
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permission_defaults/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/procedures/org_permissions_get_mask_by_names/procedure



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-memberships-private".membership_mbr_create ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    owner_id uuid = jwt_public.current_user_id();
BEGIN
    IF (NEW.type = 1) THEN 
        INSERT INTO "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships
        ( is_owner, actor_id, entity_id  )
        VALUES ( TRUE, NEW.id, NEW.id );
    ELSEIF (owner_id IS NOT NULL) THEN 
        INSERT INTO "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships
        ( is_owner, actor_id, entity_id  )
        VALUES ( TRUE, owner_id, NEW.id );
        INSERT INTO "agent-os-1773546821914-39f1cb9b-memberships-public".org_membership_defaults
        ( entity_id  ) -- is_approved, etc., defaults from table itself
        VALUES ( NEW.id );
        INSERT INTO "agent-os-1773546821914-39f1cb9b-permissions-public".org_permission_defaults 
            (permissions, entity_id)
        VALUES 
        (
            "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions_get_mask_by_names(
                ARRAY['send_approved_invites', 'create_invites']::citext[]
            ),
            NEW.id
        );
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

