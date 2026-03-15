-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/constraints/event_links_event_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/constraints/company_links_company_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_links 
  ADD CONSTRAINT event_links_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".events (id) 
    ON DELETE CASCADE;

