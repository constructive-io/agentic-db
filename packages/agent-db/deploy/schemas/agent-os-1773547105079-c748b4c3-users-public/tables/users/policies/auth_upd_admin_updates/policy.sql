-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/policies/auth_upd_admin_updates/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table


CREATE POLICY auth_upd_admin_updates ON "agent-os-1773547105079-c748b4c3-users-public".users
FOR UPDATE
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agent-os-1773547105079-c748b4c3-memberships-private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000000001') = '000000000000000000000001')
);

