-- Deploy: schemas/agent_db_invites_public/tables/org_invites/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


CREATE POLICY auth_upd ON agent_db_invites_public.org_invites
FOR UPDATE
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

