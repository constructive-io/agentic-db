-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/expected_close_date/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deals 
  DROP COLUMN expected_close_date RESTRICT;


