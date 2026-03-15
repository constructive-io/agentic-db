-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/table


CREATE POLICY auth_upd ON "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets
FOR UPDATE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

