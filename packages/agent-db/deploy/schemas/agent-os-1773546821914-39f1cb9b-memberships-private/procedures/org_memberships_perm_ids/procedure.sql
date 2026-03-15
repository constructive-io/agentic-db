-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/procedures/org_memberships_perm_ids/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_perm_ids (perm text)
  RETURNS uuid[]
AS $CODEZ$
      SELECT array_agg(m.entity_id) FROM "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships m,
		      "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions p
          WHERE
          	p.name = perm
          AND m.permissions & p.bitstr = p.bitstr
          AND m.actor_id = jwt_public.current_user_id()
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_perm_ids TO authenticated;

