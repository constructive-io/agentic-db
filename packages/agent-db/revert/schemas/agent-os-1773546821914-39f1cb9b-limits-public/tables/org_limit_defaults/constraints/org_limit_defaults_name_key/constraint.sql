-- Revert: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limit_defaults/constraints/org_limit_defaults_name_key/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".org_limit_defaults 
  DROP CONSTRAINT org_limit_defaults_name_key;


