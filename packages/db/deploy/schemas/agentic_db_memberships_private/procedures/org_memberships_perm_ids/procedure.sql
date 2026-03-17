-- Deploy: schemas/agentic_db_memberships_private/procedures/org_memberships_perm_ids/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema



CREATE FUNCTION "agentic_db_memberships_private".org_memberships_perm_ids (perm text)
  RETURNS uuid[]
AS $CODEZ$
      SELECT array_agg(m.entity_id) FROM "agentic_db_memberships_public".org_memberships m,
		      "agentic_db_permissions_public".org_permissions p
          WHERE
          	p.name = perm
          AND m.permissions & p.bitstr = p.bitstr
          AND m.actor_id = jwt_public.current_user_id()
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agentic_db_memberships_private".org_memberships_perm_ids TO authenticated;

