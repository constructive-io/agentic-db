-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/columns/expected_close_date/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".deals 
  DROP COLUMN expected_close_date RESTRICT;


