-- Deploy: schemas/agent_db_app_public/tables/tags/columns/usage_count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tags/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/category/column


ALTER TABLE "agent_db_app_public".tags 
  ADD COLUMN usage_count int;

