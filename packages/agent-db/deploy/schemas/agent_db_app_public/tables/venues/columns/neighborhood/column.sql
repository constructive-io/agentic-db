-- Deploy: schemas/agent_db_app_public/tables/venues/columns/neighborhood/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/address/column


ALTER TABLE "agent_db_app_public".venues 
  ADD COLUMN neighborhood text;

