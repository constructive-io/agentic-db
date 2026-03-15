-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/table


CREATE POLICY auth_upd ON "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers
FOR UPDATE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

