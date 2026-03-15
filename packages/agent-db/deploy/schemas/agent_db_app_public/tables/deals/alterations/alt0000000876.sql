-- Deploy: schemas/agent_db_app_public/tables/deals/alterations/alt0000000876
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/main_image_id/column


ALTER TABLE agent_db_app_public.deals 
  DISABLE ROW LEVEL SECURITY;

