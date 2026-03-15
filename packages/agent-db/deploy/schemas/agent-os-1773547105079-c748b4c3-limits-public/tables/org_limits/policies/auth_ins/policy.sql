-- Deploy: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/table


CREATE POLICY auth_ins ON "agent-os-1773547105079-c748b4c3-limits-public".org_limits
FOR INSERT
TO authenticated
WITH CHECK (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000000000001') = '000000000000000000000001')
);

