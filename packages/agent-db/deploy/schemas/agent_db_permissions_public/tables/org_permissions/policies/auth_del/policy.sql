-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/policies/auth_del/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/table


CREATE POLICY auth_del ON agent_db_permissions_public.org_permissions
FOR DELETE
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM agent_db_memberships_private.app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000001000000') = '000000000000000001000000')
);

