-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/policies/auth_upd_entity_membership/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/columns/category/column


CREATE POLICY auth_upd_entity_membership ON "agent-os-1773551593867-bac64076-app-public".billing_subscriptions
FOR UPDATE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

