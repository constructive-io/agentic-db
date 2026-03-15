-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/input_schema/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  DROP COLUMN input_schema RESTRICT;


