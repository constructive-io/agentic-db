-- Deploy: schemas/agentic_db_invites_public/tables/invites/policies/auth_del/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE POLICY auth_del ON agentic_db_invites_public.invites
FOR DELETE
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

