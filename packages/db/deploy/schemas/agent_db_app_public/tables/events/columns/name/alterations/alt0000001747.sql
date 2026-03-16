-- Deploy: schemas/agent_db_app_public/tables/events/columns/name/alterations/alt0000001747
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/name/column
-- requires: schemas/agent_db_app_public/tables/events/columns/updated_at/alterations/alt0000001746


ALTER TABLE "agent_db_app_public".events 
  ALTER COLUMN name SET NOT NULL;

