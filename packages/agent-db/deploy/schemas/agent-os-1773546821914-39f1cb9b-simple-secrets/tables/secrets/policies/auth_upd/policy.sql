-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/table


CREATE POLICY auth_upd ON "agent-os-1773546821914-39f1cb9b-simple-secrets".secrets
FOR UPDATE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

