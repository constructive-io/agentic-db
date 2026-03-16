-- Deploy: schemas/agent_db_app_public/tables/event_links/columns/id/alterations/alt0000001809
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_links/table
-- requires: schemas/agent_db_app_public/tables/event_links/columns/id/column
-- requires: schemas/agent_db_app_public/tables/company_links/columns/embedding/column


ALTER TABLE "agent_db_app_public".event_links 
  ALTER COLUMN id SET NOT NULL;

