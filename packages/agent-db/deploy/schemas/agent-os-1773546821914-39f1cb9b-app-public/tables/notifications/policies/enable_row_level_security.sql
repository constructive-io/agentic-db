-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/columns/ref_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notifications 
  ENABLE ROW LEVEL SECURITY;

