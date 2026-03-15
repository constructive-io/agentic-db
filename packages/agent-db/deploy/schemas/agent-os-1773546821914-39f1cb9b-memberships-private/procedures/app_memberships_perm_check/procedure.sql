-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/procedures/app_memberships_perm_check/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_perm_check (perm text, actor_id uuid DEFAULT jwt_public.current_user_id())
  RETURNS boolean
AS $CODEZ$
SELECT EXISTS (
      SELECT 1 FROM "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships m,
		      "agent-os-1773546821914-39f1cb9b-permissions-public".app_permissions p
          WHERE
          	p.name = perm
          AND m.permissions & p.bitstr = p.bitstr
          AND m.actor_id = app_memberships_perm_check.actor_id
);
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_perm_check TO authenticated;

