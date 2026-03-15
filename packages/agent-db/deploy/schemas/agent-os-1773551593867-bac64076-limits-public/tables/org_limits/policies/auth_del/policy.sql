-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limits/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limits/table


CREATE POLICY auth_del ON "agent-os-1773551593867-bac64076-limits-public".org_limits
FOR DELETE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000000000001') = '000000000000000000000001')
);

