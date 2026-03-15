-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/category/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/city/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venues 
  ADD COLUMN category text;

