-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/policies/auth_sel_entity_membership/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_events/policies/auth_del_entity_membership/policy


CREATE POLICY auth_sel_entity_membership ON "agent-os-1773547105079-c748b4c3-app-public".company_events
FOR SELECT
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

