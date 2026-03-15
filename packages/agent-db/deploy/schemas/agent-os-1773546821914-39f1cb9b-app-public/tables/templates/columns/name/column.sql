-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/updated_at/alterations/alt0000001558


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".templates 
  ADD COLUMN name text;

