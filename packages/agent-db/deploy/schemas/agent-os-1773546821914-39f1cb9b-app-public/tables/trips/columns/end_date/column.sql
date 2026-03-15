-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/columns/end_date/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/columns/start_date/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".trips 
  ADD COLUMN end_date date;

