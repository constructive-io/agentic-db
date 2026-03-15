-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/columns/id/alterations/alt0000000047


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limits 
  ALTER COLUMN id DROP NOT NULL;


