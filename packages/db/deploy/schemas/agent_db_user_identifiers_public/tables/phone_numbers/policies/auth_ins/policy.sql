-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/policies/auth_ins/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


CREATE POLICY auth_ins ON "agent_db_user_identifiers_public".phone_numbers
FOR INSERT
TO authenticated
WITH CHECK (
  owner_id = jwt_public.current_user_id()
);

