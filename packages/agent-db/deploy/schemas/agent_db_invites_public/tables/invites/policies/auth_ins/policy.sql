-- Deploy: schemas/agent_db_invites_public/tables/invites/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


CREATE POLICY auth_ins ON "agent_db_invites_public".invites
FOR INSERT
TO authenticated
WITH CHECK (
  sender_id = jwt_public.current_user_id()
);

