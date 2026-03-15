-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


CREATE POLICY auth_upd ON agent_db_user_identifiers_public.phone_numbers
FOR UPDATE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

