-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/table


CREATE POLICY auth_ins ON "agent-os-1773550873753-b6c4a3e1-memberships-public".org_owner_grants
FOR INSERT
TO authenticated
WITH CHECK (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773550873753-b6c4a3e1-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND org_sprt.is_owner IS TRUE)
);

