-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/output_schema/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  DROP COLUMN output_schema RESTRICT;


