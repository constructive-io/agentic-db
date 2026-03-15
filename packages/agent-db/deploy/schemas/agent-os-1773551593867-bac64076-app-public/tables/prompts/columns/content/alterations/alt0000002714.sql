-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/content/alterations/alt0000002714
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/content/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/name/alterations/alt0000002713


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
  ALTER COLUMN content SET NOT NULL;

