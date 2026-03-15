-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/main_image_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".companies 
  ENABLE ROW LEVEL SECURITY;

