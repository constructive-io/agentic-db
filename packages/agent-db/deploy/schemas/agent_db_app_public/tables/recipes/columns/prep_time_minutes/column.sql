-- Deploy: schemas/agent_db_app_public/tables/recipes/columns/prep_time_minutes/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/cuisine/column


ALTER TABLE "agent_db_app_public".recipes 
  ADD COLUMN prep_time_minutes int;

