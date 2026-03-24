-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE POLICY auth_sel ON agentic_db_profiles_public.app_profiles
FOR SELECT
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM agentic_db_memberships_private.app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id())
);

