-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/id/alterations/alt0000000966
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_links 
  ALTER COLUMN id SET NOT NULL;

