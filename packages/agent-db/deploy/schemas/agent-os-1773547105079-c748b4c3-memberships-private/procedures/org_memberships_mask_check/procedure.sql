-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/procedures/org_memberships_mask_check/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_mask_check (mask bit varying, entity_id uuid, actor_id uuid DEFAULT jwt_public.current_user_id())
  RETURNS boolean
AS $CODEZ$
    SELECT EXISTS (
        SELECT 1 FROM "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships m
            WHERE m.permissions & mask = mask
            AND m.entity_id = org_memberships_mask_check.entity_id
            AND m.actor_id = org_memberships_mask_check.actor_id
    );
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_mask_check TO authenticated;

