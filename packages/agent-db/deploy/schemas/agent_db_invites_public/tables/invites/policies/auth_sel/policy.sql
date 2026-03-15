-- Deploy: schemas/agent_db_invites_public/tables/invites/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


CREATE POLICY auth_sel ON agent_db_invites_public.invites
FOR SELECT
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

