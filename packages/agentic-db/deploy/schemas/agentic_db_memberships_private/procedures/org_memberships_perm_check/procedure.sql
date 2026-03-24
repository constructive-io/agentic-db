-- Deploy: schemas/agentic_db_memberships_private/procedures/org_memberships_perm_check/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema



CREATE FUNCTION "agentic_db_memberships_private".org_memberships_perm_check (perm text, entity_id uuid, actor_id uuid DEFAULT jwt_public.current_user_id())
  RETURNS boolean
AS $CODEZ$
SELECT EXISTS (
      SELECT 1 FROM "agentic_db_memberships_public".org_memberships m,
		      "agentic_db_permissions_public".org_permissions p
          WHERE
          	p.name = perm
          AND m.permissions & p.bitstr = p.bitstr
          AND m.entity_id = org_memberships_perm_check.entity_id
          AND m.actor_id = org_memberships_perm_check.actor_id
);
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agentic_db_memberships_private".org_memberships_perm_check TO authenticated;

