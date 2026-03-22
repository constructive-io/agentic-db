-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/policies/auth_ins/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table


CREATE POLICY auth_ins ON agentic_db_invites_public.org_invites
FOR INSERT
TO authenticated
WITH CHECK (
  sender_id = jwt_public.current_user_id()
);

