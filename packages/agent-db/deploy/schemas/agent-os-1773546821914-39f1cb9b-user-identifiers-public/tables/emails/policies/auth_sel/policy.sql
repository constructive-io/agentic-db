-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/table


CREATE POLICY auth_sel ON "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails
FOR SELECT
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

