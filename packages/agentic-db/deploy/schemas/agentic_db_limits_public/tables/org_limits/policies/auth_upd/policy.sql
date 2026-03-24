-- Deploy: schemas/agentic_db_limits_public/tables/org_limits/policies/auth_upd/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limits/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE POLICY auth_upd ON agentic_db_limits_public.org_limits
FOR UPDATE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM agentic_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000000000001') = '000000000000000000000001')
);

