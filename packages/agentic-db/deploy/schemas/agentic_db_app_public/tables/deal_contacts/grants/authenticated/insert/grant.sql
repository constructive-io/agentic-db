-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table


GRANT INSERT ON "agentic_db_app_public".deal_contacts TO authenticated;

