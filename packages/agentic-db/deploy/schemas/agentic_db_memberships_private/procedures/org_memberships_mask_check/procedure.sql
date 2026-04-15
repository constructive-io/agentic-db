-- Deploy: schemas/agentic_db_memberships_private/procedures/org_memberships_mask_check/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


CREATE FUNCTION agentic_db_memberships_private.org_memberships_mask_check(
  mask bit varying,
  entity_id uuid,
  actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS boolean AS $_PGFN_$
SELECT
  EXISTS (SELECT 1
  FROM agentic_db_memberships_public.org_memberships AS m
  WHERE
    ((m.permissions & mask) = mask AND m.entity_id = org_memberships_mask_check.entity_id) AND m.actor_id = org_memberships_mask_check.actor_id)
$_PGFN_$ LANGUAGE sql STABLE SECURITY DEFINER;

