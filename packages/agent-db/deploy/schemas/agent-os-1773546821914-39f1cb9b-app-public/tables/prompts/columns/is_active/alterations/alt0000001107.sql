-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/is_active/alterations/alt0000001107
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/is_active/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/version/alterations/alt0000001106



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".prompts 
    ALTER COLUMN is_active SET DEFAULT true;

