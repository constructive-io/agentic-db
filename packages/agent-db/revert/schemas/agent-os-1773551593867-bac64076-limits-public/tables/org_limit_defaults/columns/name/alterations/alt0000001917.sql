-- Revert: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limit_defaults/columns/name/alterations/alt0000001917


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".org_limit_defaults 
  ALTER COLUMN name DROP NOT NULL;


