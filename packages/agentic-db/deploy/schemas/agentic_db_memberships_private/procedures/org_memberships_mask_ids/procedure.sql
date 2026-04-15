-- Deploy: schemas/agentic_db_memberships_private/procedures/org_memberships_mask_ids/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


CREATE FUNCTION agentic_db_memberships_private.org_memberships_mask_ids(
  IN mask bit(64)
) RETURNS uuid[] AS $_PGFN_$
SELECT array_agg(m.entity_id)
FROM agentic_db_memberships_public.org_memberships AS m
WHERE
  (m.permissions & mask) = mask AND m.actor_id = jwt_public.current_user_id()
$_PGFN_$ LANGUAGE sql STABLE SECURITY DEFINER;

