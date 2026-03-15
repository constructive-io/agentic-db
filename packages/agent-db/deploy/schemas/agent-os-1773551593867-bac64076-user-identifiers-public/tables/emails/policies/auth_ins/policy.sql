-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/table


CREATE POLICY auth_ins ON "agent-os-1773551593867-bac64076-user-identifiers-public".emails
FOR INSERT
TO authenticated
WITH CHECK (
  owner_id = jwt_public.current_user_id()
);

