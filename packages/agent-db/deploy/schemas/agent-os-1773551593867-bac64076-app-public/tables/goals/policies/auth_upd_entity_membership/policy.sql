-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/policies/auth_upd_entity_membership/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/intent_trigger/column


CREATE POLICY auth_upd_entity_membership ON "agent-os-1773551593867-bac64076-app-public".goals
FOR UPDATE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

