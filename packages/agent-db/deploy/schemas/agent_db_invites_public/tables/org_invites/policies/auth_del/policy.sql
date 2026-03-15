-- Deploy: schemas/agent_db_invites_public/tables/org_invites/policies/auth_del/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


CREATE POLICY auth_del ON agent_db_invites_public.org_invites
FOR DELETE
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

