-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/policies/auth_ins_own/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table


CREATE POLICY auth_ins_own ON "agent-os-1773551593867-bac64076-memberships-public".org_memberships
FOR INSERT
TO authenticated
WITH CHECK (
  actor_id = jwt_public.current_user_id()
);

