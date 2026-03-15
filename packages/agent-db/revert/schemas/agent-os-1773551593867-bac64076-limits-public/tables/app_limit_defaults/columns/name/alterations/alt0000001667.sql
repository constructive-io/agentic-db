-- Revert: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limit_defaults/columns/name/alterations/alt0000001667


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".app_limit_defaults 
  ALTER COLUMN name DROP NOT NULL;


