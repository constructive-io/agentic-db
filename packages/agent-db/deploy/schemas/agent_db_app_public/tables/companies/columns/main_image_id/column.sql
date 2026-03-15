-- Deploy: schemas/agent_db_app_public/tables/companies/columns/main_image_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/search_tsv/column


ALTER TABLE "agent_db_app_public".companies 
  ADD COLUMN main_image_id uuid;

