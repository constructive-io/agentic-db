-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_permissions/policies/auth_del/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_permissions/table


CREATE POLICY auth_del ON "agentic_db_profiles_public".app_profile_permissions
FOR DELETE
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agentic_db_memberships_private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000001000000') = '000000000000000001000000')
);

