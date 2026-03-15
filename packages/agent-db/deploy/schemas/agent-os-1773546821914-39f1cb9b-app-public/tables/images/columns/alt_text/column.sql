-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/alt_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/meta/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".images 
  ADD COLUMN alt_text text;

