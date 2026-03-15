-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table


GRANT SELECT ON agent_db_user_identifiers_public.emails TO authenticated;

