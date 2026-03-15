-- Deploy: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/schema
-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/table


CREATE POLICY auth_ins ON "agent-os-1773551593867-bac64076-simple-secrets".secrets
FOR INSERT
TO authenticated
WITH CHECK (
  owner_id = jwt_public.current_user_id()
);

