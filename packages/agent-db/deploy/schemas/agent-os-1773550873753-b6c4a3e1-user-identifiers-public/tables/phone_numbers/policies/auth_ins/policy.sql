-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/phone_numbers/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/phone_numbers/table


CREATE POLICY auth_ins ON "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".phone_numbers
FOR INSERT
TO authenticated
WITH CHECK (
  owner_id = jwt_public.current_user_id()
);

