-- Deploy: schemas/agent_db_app_public/tables/trips/columns/name/alterations/alt0000002289
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/name/column
-- requires: schemas/agent_db_app_public/tables/trips/columns/updated_at/alterations/alt0000002288


ALTER TABLE "agent_db_app_public".trips 
  ALTER COLUMN name SET NOT NULL;

