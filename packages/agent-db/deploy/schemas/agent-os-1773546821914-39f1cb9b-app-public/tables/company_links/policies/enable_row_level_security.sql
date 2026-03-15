-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_links 
  ENABLE ROW LEVEL SECURITY;

