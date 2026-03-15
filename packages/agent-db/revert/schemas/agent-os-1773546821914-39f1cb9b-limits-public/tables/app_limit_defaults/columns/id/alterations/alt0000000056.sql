-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/columns/id/alterations/alt0000000056


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limit_defaults 
  ALTER COLUMN id DROP NOT NULL;


