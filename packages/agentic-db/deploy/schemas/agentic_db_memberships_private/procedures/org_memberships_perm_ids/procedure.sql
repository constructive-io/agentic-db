-- Deploy: schemas/agentic_db_memberships_private/procedures/org_memberships_perm_ids/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table


CREATE FUNCTION agentic_db_memberships_private.org_memberships_perm_ids(
  IN perm text
) RETURNS uuid[] AS $_PGFN_$
SELECT array_agg(m.entity_id)
FROM agentic_db_memberships_public.org_memberships AS m, agentic_db_permissions_public.org_permissions AS p
WHERE
  (p.name = perm AND (m.permissions & p.bitstr) = p.bitstr) AND m.actor_id = jwt_public.current_user_id()
$_PGFN_$ LANGUAGE sql STABLE SECURITY DEFINER;

