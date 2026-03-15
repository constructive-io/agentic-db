-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/version/alterations/alt0000002715
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/model/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/version/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
    ALTER COLUMN version SET DEFAULT 1;

