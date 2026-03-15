-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/name/alterations/alt0000002713
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/name/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/updated_at/alterations/alt0000002712


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
  ALTER COLUMN name SET NOT NULL;

