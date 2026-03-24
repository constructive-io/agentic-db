-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/policies/auth_sel_org_members_select/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table


CREATE POLICY auth_sel_org_members_select ON "agentic_db_invites_public".org_invites
FOR SELECT
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agentic_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000000000100') = '000000000000000000000100')
);

