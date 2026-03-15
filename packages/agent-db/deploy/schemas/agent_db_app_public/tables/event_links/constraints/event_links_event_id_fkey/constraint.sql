-- Deploy: schemas/agent_db_app_public/tables/event_links/constraints/event_links_event_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/event_links/table
-- requires: schemas/agent_db_app_public/tables/company_links/constraints/company_links_company_id_fkey/constraint


ALTER TABLE "agent_db_app_public".event_links 
  ADD CONSTRAINT event_links_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES "agent_db_app_public".events (id) 
    ON DELETE CASCADE;

