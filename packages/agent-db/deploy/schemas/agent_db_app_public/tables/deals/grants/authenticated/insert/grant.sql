-- Deploy: schemas/agent_db_app_public/tables/deals/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/main_image_id/column


GRANT INSERT ON agent_db_app_public.deals TO authenticated;

