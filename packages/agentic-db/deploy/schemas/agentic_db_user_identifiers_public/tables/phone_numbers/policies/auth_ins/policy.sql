-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/policies/auth_ins/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table


CREATE POLICY auth_ins ON agentic_db_user_identifiers_public.phone_numbers
FOR INSERT
TO authenticated
WITH CHECK (
  owner_id = jwt_public.current_user_id()
);

