-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table


GRANT DELETE ON "agentic_db_user_identifiers_public".emails TO authenticated;

