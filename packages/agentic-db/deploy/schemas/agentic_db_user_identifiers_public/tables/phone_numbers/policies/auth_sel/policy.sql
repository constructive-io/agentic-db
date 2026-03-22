-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table


CREATE POLICY auth_sel ON agentic_db_user_identifiers_public.phone_numbers
FOR SELECT
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

