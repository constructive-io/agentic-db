-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/table


CREATE POLICY auth_ins ON "agent-os-1773546821914-39f1cb9b-simple-secrets".secrets
FOR INSERT
TO authenticated
WITH CHECK (
  owner_id = jwt_public.current_user_id()
);

