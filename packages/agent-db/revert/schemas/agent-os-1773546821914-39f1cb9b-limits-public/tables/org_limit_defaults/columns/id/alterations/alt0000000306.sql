-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limit_defaults/columns/id/alterations/alt0000000306


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".org_limit_defaults 
  ALTER COLUMN id DROP NOT NULL;


