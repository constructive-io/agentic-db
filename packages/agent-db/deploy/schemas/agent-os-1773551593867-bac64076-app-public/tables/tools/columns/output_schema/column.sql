-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/output_schema/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/input_schema/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  ADD COLUMN output_schema jsonb;

