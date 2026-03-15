-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/columns/is_checked/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/columns/position/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".list_items 
  ADD COLUMN is_checked bool;

