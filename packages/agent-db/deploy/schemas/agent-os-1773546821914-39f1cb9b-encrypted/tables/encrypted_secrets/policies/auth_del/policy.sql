-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/table


CREATE POLICY auth_del ON "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets
FOR DELETE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

