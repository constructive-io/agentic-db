-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/columns/name/alterations/alt0000000058


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limit_defaults 
  ALTER COLUMN name DROP NOT NULL;


