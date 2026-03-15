-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/table


CREATE POLICY auth_sel ON "agent-os-1773551593867-bac64076-memberships-public".org_grants
FOR SELECT
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000000000001') = '000000000000000000000001')
);

