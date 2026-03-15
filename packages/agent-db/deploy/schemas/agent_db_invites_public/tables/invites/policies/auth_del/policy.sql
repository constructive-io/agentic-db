-- Deploy: schemas/agent_db_invites_public/tables/invites/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


CREATE POLICY auth_del ON agent_db_invites_public.invites
FOR DELETE
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

