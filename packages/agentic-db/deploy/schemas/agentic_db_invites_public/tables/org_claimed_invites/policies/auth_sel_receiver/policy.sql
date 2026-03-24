-- Deploy: schemas/agentic_db_invites_public/tables/org_claimed_invites/policies/auth_sel_receiver/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_claimed_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE POLICY auth_sel_receiver ON agentic_db_invites_public.org_claimed_invites
FOR SELECT
TO authenticated
USING (
  receiver_id = jwt_public.current_user_id()
);

