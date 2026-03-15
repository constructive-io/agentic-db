-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/policies/auth_del/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/table


CREATE POLICY auth_del ON agent_db_profiles_public.org_profile_permissions
FOR DELETE
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM agent_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000010000000') = '000000000000000010000000')
);

