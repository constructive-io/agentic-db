-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_level_requirements 
  ADD COLUMN name citext;

