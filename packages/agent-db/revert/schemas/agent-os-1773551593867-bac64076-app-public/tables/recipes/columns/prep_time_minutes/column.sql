-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/prep_time_minutes/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  DROP COLUMN prep_time_minutes RESTRICT;


