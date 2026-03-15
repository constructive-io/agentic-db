-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/output_schema/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
  DROP COLUMN output_schema RESTRICT;


