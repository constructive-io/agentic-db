-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/model/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
  ADD COLUMN model text;

