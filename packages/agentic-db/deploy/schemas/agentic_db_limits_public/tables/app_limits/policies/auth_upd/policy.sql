-- Deploy: schemas/agentic_db_limits_public/tables/app_limits/policies/auth_upd/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE POLICY auth_upd ON agentic_db_limits_public.app_limits
FOR UPDATE
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM agentic_db_memberships_private.app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000100000') = '000000000000000000100000')
);

