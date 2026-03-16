-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table


GRANT DELETE ON "agent_db_user_identifiers_public".emails TO authenticated;

