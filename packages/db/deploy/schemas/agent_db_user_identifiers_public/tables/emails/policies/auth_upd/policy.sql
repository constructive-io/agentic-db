-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/policies/auth_upd/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table


CREATE POLICY auth_upd ON "agent_db_user_identifiers_public".emails
FOR UPDATE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

