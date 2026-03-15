-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limit_defaults/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limit_defaults/table


CREATE POLICY auth_upd ON "agent-os-1773551593867-bac64076-limits-public".app_limit_defaults
FOR UPDATE
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agent-os-1773551593867-bac64076-memberships-private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000100000') = '000000000000000000100000')
);

