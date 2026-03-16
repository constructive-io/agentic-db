-- Deploy: schemas/agent_db_app_public/tables/events/columns/id/alterations/alt0000001740
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/id/column
-- requires: schemas/agent_db_app_public/tables/deals/columns/embedding/column


ALTER TABLE "agent_db_app_public".events 
  ALTER COLUMN id SET NOT NULL;

