-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


CREATE POLICY auth_ins ON "agent_db_memberships_public".org_membership_defaults
FOR INSERT
TO authenticated
WITH CHECK (
  EXISTS (SELECT 1
  FROM "agent_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000000000001') = '000000000000000000000001')
);

