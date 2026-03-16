-- Deploy: schemas/agent_db_app_public/tables/habits/columns/name/alterations/alt0000002319
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/name/column
-- requires: schemas/agent_db_app_public/tables/habits/columns/updated_at/alterations/alt0000002318


ALTER TABLE "agent_db_app_public".habits 
  ALTER COLUMN name SET NOT NULL;

