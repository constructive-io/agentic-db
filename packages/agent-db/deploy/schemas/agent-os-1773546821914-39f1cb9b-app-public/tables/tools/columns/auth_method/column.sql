-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/auth_method/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/endpoint/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
  ADD COLUMN auth_method text;

