-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/policies/auth_sel_own/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


CREATE POLICY auth_sel_own ON agentic_db_memberships_public.org_memberships
FOR SELECT
TO authenticated
USING (
  actor_id = jwt_public.current_user_id()
);

