-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/table


CREATE POLICY auth_sel ON agentic_db_memberships_public.membership_types
FOR SELECT
TO authenticated
USING (
  TRUE
);

