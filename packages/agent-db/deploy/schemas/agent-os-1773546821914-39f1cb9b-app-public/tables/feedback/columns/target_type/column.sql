-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/columns/target_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/columns/updated_at/alterations/alt0000001125


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".feedback 
  ADD COLUMN target_type text;

