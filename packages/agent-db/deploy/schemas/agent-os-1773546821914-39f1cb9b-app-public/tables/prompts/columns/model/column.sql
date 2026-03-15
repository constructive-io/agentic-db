-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/model/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".prompts 
  ADD COLUMN model text;

