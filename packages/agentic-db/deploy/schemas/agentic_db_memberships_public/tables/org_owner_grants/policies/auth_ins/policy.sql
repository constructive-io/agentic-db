-- Deploy: schemas/agentic_db_memberships_public/tables/org_owner_grants/policies/auth_ins/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_owner_grants/table


CREATE POLICY auth_ins ON agentic_db_memberships_public.org_owner_grants
FOR INSERT
TO authenticated
WITH CHECK (
  entity_id IN (SELECT org_sprt.entity_id
  FROM agentic_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND org_sprt.is_owner IS TRUE)
);

