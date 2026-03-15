-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permission_defaults/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permission_defaults/table


CREATE POLICY auth_del ON "agent-os-1773547105079-c748b4c3-permissions-public".app_permission_defaults
FOR DELETE
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agent-os-1773547105079-c748b4c3-memberships-private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000001000000') = '000000000000000001000000')
);

