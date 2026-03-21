-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_permissions/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_permissions/table


CREATE POLICY auth_sel ON agentic_db_profiles_public.org_profile_permissions
FOR SELECT
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM agentic_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

