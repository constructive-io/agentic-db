-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/columns/priority/alterations/alt0000000211
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/columns/priority/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_level_requirements 
  ALTER COLUMN priority SET NOT NULL;

