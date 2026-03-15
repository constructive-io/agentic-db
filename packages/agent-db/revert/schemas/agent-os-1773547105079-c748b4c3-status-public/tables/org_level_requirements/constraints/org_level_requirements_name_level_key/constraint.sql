-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/constraints/org_level_requirements_name_level_key/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_level_requirements 
  DROP CONSTRAINT org_level_requirements_name_level_key;


