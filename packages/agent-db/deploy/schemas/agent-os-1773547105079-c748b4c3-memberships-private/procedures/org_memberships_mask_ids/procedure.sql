-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/procedures/org_memberships_mask_ids/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_mask_ids (mask bit varying)
  RETURNS uuid[]
AS $CODEZ$
    SELECT array_agg(m.entity_id) FROM "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships m
        WHERE m.permissions & mask = mask
        AND m.actor_id = jwt_public.current_user_id()
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_mask_ids TO authenticated;

