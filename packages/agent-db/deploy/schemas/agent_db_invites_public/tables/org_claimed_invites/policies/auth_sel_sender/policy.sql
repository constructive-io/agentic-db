-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/policies/auth_sel_sender/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/table


CREATE POLICY auth_sel_sender ON agent_db_invites_public.org_claimed_invites
FOR SELECT
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

