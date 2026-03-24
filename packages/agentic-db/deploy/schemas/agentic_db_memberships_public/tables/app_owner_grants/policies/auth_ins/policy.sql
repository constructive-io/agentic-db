-- Deploy: schemas/agentic_db_memberships_public/tables/app_owner_grants/policies/auth_ins/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/app_owner_grants/table


CREATE POLICY auth_ins ON agentic_db_memberships_public.app_owner_grants
FOR INSERT
TO authenticated
WITH CHECK (
  EXISTS (SELECT 1
  FROM agentic_db_memberships_private.app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND app_sprt.is_owner IS TRUE)
);

