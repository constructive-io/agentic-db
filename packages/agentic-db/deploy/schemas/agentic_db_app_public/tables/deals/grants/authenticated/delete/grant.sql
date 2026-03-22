-- Deploy: schemas/agentic_db_app_public/tables/deals/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/companies/alterations/alt0000005559


GRANT DELETE ON agentic_db_app_public.deals TO authenticated;

