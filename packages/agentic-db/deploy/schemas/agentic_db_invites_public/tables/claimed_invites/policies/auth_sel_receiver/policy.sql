-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/policies/auth_sel_receiver/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/table


CREATE POLICY auth_sel_receiver ON agentic_db_invites_public.claimed_invites
FOR SELECT
TO authenticated
USING (
  receiver_id = jwt_public.current_user_id()
);

