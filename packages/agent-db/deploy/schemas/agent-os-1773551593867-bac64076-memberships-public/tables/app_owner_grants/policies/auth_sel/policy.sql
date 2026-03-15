-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_owner_grants/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_owner_grants/table


CREATE POLICY auth_sel ON "agent-os-1773551593867-bac64076-memberships-public".app_owner_grants
FOR SELECT
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agent-os-1773551593867-bac64076-memberships-private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND app_sprt.is_owner IS TRUE)
);

