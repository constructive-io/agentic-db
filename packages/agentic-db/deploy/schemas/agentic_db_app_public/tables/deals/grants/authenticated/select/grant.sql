-- Deploy: schemas/agentic_db_app_public/tables/deals/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/companies/alterations/alt0000005559


GRANT SELECT ON agentic_db_app_public.deals TO authenticated;

