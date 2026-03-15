-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/columns/event_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/constraints/company_links_company_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_links 
  ADD COLUMN event_id uuid;

