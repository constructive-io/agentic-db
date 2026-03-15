-- Deploy: schemas/agent_db_app_public/tables/event_links/columns/event_id/alterations/alt0000004227
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_links/table
-- requires: schemas/agent_db_app_public/tables/event_links/columns/event_id/column
-- requires: schemas/agent_db_app_public/tables/company_links/constraints/company_links_company_id_fkey/constraint


ALTER TABLE "agent_db_app_public".event_links 
  ALTER COLUMN event_id SET NOT NULL;

