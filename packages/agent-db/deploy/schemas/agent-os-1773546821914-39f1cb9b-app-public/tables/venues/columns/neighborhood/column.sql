-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/neighborhood/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/address/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venues 
  ADD COLUMN neighborhood text;

