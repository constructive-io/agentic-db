-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/policies/auth_upd/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


CREATE POLICY auth_upd ON "agent_db_memberships_public".org_membership_defaults
FOR UPDATE
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agent_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000000000001') = '000000000000000000000001')
);

