-- Deploy: schemas/agentic_db_invites_public/tables/invites/policies/auth_upd/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE POLICY auth_upd ON agentic_db_invites_public.invites
FOR UPDATE
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

