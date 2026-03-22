-- Deploy: schemas/agentic_db_app_public/tables/deals/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/companies/alterations/alt0000000885


GRANT INSERT ON "agentic_db_app_public".deals TO authenticated;

