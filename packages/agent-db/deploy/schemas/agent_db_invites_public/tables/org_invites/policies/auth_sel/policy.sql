-- Deploy: schemas/agent_db_invites_public/tables/org_invites/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


CREATE POLICY auth_sel ON agent_db_invites_public.org_invites
FOR SELECT
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

