-- Deploy: schemas/agentic_db_memberships_private/procedures/app_memberships_perm_check/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/table


CREATE FUNCTION agentic_db_memberships_private.app_memberships_perm_check(
  perm text,
  actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS boolean AS $_PGFN_$
SELECT
  EXISTS (SELECT 1
  FROM agentic_db_memberships_public.app_memberships AS m, agentic_db_permissions_public.app_permissions AS p
  WHERE
    (p.name = perm AND (m.permissions & p.bitstr) = p.bitstr) AND m.actor_id = app_memberships_perm_check.actor_id)
$_PGFN_$ LANGUAGE sql STABLE SECURITY DEFINER;

