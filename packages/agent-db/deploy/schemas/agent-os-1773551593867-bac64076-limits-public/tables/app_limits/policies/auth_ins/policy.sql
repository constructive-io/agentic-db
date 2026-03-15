-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/table


CREATE POLICY auth_ins ON "agent-os-1773551593867-bac64076-limits-public".app_limits
FOR INSERT
TO authenticated
WITH CHECK (
  EXISTS (SELECT 1
  FROM "agent-os-1773551593867-bac64076-memberships-private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000100000') = '000000000000000000100000')
);

