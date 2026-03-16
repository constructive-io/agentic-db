-- Deploy: schemas/agent_db_app_public/tables/deals/alterations/alt0000001728
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/main_image_id/column


ALTER TABLE "agent_db_app_public".deals 
  DISABLE ROW LEVEL SECURITY;

