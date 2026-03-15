-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/table


CREATE POLICY auth_del ON "agent-os-1773550873753-b6c4a3e1-encrypted".encrypted_secrets
FOR DELETE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

