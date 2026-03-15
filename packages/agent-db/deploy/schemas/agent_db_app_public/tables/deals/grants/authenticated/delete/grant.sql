-- Deploy: schemas/agent_db_app_public/tables/deals/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/main_image_id/column


GRANT DELETE ON "agent_db_app_public".deals TO authenticated;

