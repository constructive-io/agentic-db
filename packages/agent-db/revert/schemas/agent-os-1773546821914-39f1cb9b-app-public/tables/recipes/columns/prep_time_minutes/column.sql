-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/prep_time_minutes/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".recipes 
  DROP COLUMN prep_time_minutes RESTRICT;


